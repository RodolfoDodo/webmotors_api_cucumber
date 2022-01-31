Given('que acesso a api endpoint GET  API para recuperar versoes cadastradas na webmotors') do
    @version = HTTParty.get('https://desafioonline.webmotors.com.br/api/OnlineChallenge/Version?ModelID=2')
       
end   
  
  Then('verifico o status code da aplicacao e sua resposta para todos as versoes') do
          # Verificando o status code da aplicação
          expect(@version.code).to eql 200
  end
  
  Then('verifico o contrato das versoes') do
    @version.parsed_response.each do |item, |
        expect(item["ModelID"]).to be_a_kind_of(Integer)
        expect(item["ID"]).to be_a_kind_of(Integer)
        expect(item["Name"]).to be_a_kind_of(String)
    end
  end
  