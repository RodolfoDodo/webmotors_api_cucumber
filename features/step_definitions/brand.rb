Given('que acesso a api endpoint GET API para recuperar marcas cadastradas na webmotors') do
    @brand = HTTParty.get('https://desafioonline.webmotors.com.br/api/OnlineChallenge/Make')
  end
  
  Then('verifico o status code da aplicacao e sua resposta para todas as Marcas') do
    # Verificando o status code da aplicação
    expect(@brand.code).to eql 200
    # Verificando o Json da resposta 
    expect(@brand.parsed_response).to eql [{"ID"=>1, "Name"=>"Chevrolet"}, {"ID"=>2, "Name"=>"Honda"}, {"ID"=>3, "Name"=>"Ford"}]
 end

 Then('verifico o contrato das Marcas') do
    @brand.parsed_response.each do |item, |
      expect(item["ID"]).to be_a_kind_of(Integer)
      expect(item["Name"]).to be_a_kind_of(String)
  end
end


