Given('que acesso a api endpoint GET  API para recuperar veiculos cadastradas na webmotors') do
    
    @vehicles =  HTTParty.get('https://desafioonline.webmotors.com.br/api/OnlineChallenge/Vehicles?Page=2')
end
  
  Then('verifico o status code da aplicacao e sua resposta para todos os Veiculos') do
     # Verificando o status code da aplicação
     expect(@vehicles.code).to eql 200

     #puts @model
     # Verificando o Json da resposta 
    expect(@vehicles.parsed_response).to eql [{"ID"=>11, "Make"=>"Mitsubishi", "Model"=>"Lancer", "Version"=>"2.0 EVO 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/04.jpg", "KM"=>12900, "Price"=>"59000,00", "YearModel"=>2016, "YearFab"=>2015, "Color"=>"Vermelho"},
     {"ID"=>12, "Make"=>"Honda", "Model"=>"Fit", "Version"=>"1.4 LXL 16V FLEX 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/05.jpg", "KM"=>12000, "Price"=>"55000,00", "YearModel"=>2016, "YearFab"=>2016, "Color"=>"Azul"},
     {"ID"=>13, "Make"=>"Chevrolet", "Model"=>"Agile", "Version"=>"1.4 MPFI EFFECT 8V FLEX 4P AUTOMATIZADO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/06.jpg", "KM"=>12000, "Price"=>"37000,00", "YearModel"=>2014, "YearFab"=>2013, "Color"=>"Vermelho"},
     {"ID"=>14, "Make"=>"Honda", "Model"=>"Fit", "Version"=>"1.4 LXL 16V FLEX 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/05.jpg", "KM"=>12000, "Price"=>"55000,00", "YearModel"=>2016, "YearFab"=>2016, "Color"=>"Azul"},
     {"ID"=>15, "Make"=>"Honda", "Model"=>"City", "Version"=>"2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/01.jpg", "KM"=>0, "Price"=>"59000,00", "YearModel"=>2018, "YearFab"=>2017, "Color"=>"Azul"},       
     {"ID"=>16, "Make"=>"Mitsubishi", "Model"=>"Lancer", "Version"=>"2.0 EVO 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/02.jpg", "KM"=>47500, "Price"=>"49000,00", "YearModel"=>2012, "YearFab"=>2012, "Color"=>"Branco"},
     {"ID"=>17, "Make"=>"Honda", "Model"=>"Fit", "Version"=>"1.4 LXL 16V FLEX 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/03.jpg", "KM"=>0, "Price"=>"78000,00", "YearModel"=>2018, "YearFab"=>2018, "Color"=>"Preto"},
     {"ID"=>18, "Make"=>"Mitsubishi", "Model"=>"Lancer", "Version"=>"2.0 EVO 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/04.jpg", "KM"=>12900, "Price"=>"59000,00", "YearModel"=>2016, "YearFab"=>2015, "Color"=>"Vermelho"},
     {"ID"=>19, "Make"=>"Honda", "Model"=>"Fit", "Version"=>"1.4 LXL 16V FLEX 4P AUTOMÁTICO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/05.jpg", "KM"=>12000, "Price"=>"55000,00", "YearModel"=>2016, "YearFab"=>2016, "Color"=>"Azul"},
     {"ID"=>20, "Make"=>"Chevrolet", "Model"=>"Agile", "Version"=>"1.4 MPFI EFFECT 8V FLEX 4P AUTOMATIZADO", "Image"=>"http://desafioonline.webmotors.com.br/content/img/07.jpg", "KM"=>0, "Price"=>"45000,00", "YearModel"=>2018, "YearFab"=>2017, "Color"=>"Cinza"}]

  end

  Then('verifico o contrato dos Veiculos') do
        
        @vehicles.parsed_response.each do |item, |
            expect(item["ID"]).to be_a_kind_of(Integer)
            expect(item["Make"]).to be_a_kind_of(String)
            expect(item["Model"]).to be_a_kind_of(String)
            expect(item["Version"]).to be_a_kind_of(String)
            expect(item["Image"]).to be_a_kind_of(String)
            expect(item["KM"]).to be_a_kind_of(Integer)
            expect(item["Price"]).to be_a_kind_of(String)
            expect(item["YearModel"]).to be_a_kind_of(Integer)
            expect(item["YearFab"]).to be_a_kind_of(Integer)
            expect(item["Color"]).to be_a_kind_of(String)

        end
  end