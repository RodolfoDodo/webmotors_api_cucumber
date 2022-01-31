
Given('que acesso a api endpoint GET  API para recuperar modelos cadastradas na webmotors') do
    @model = HTTParty.get('https://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=1')
    
  end
  
  Then('verifico o status code da aplicacao e sua resposta para todos os Modelos') do
     # Verificando o status code da aplicação
     expect(@model.code).to eql 200

     #puts @model
     # Verificando o Json da resposta 
    expect(@model.parsed_response).to eql [{"MakeID"=>1, "ID"=>1, "Name"=>"Agile"}, {"MakeID"=>1, "ID"=>2, "Name"=>"Astra"}, {"MakeID"=>1, "ID"=>3, "Name"=>"Onix"}]
     
  end


Then('verifico o contrato dos Modelos') do
        
    @model.parsed_response.each do |item, |
        expect(item["MakeID"]).to be_a_kind_of(Integer)
        expect(item["ID"]).to be_a_kind_of(Integer)
        expect(item["Name"]).to be_a_kind_of(String)
    end
  end