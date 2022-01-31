Feature: API WEBmotors

    Realização dos testes de API

    @listaMarcas
    Scenario: Listando todas as Marcas
        Given que acesso a api endpoint GET API para recuperar marcas cadastradas na webmotors
        Then verifico o status code da aplicacao e sua resposta para todas as Marcas

    @contratoMarcas
    Scenario: Testando o contrato das Marcas
        Given que acesso a api endpoint GET API para recuperar marcas cadastradas na webmotors
        Then verifico o contrato das Marcas

    @listaModelos
    Scenario: Listando todas os Modelos
        Given que acesso a api endpoint GET  API para recuperar modelos cadastradas na webmotors
        Then verifico o status code da aplicacao e sua resposta para todos os Modelos

    @contratoModelos
    Scenario: Testando contrato dos Modelos
        Given que acesso a api endpoint GET  API para recuperar modelos cadastradas na webmotors
        Then verifico o contrato dos Modelos

    @listaVeiculos
    Scenario: Listando todas os Veiculos
        Given que acesso a api endpoint GET  API para recuperar veiculos cadastradas na webmotors
        Then verifico o status code da aplicacao e sua resposta para todos os Veiculos

    @contratoVeiculos
    Scenario: Testando contrato dos Veiculos
        Given que acesso a api endpoint GET  API para recuperar veiculos cadastradas na webmotors
        Then verifico o contrato dos Veiculos

    @listaVersoes
    Scenario: Listando todas as Versões
        Given que acesso a api endpoint GET  API para recuperar versoes cadastradas na webmotors
        Then verifico o status code da aplicacao e sua resposta para todos as versoes

    @contratoVersoes
    Scenario: Testando contrato das Versões
        Given que acesso a api endpoint GET  API para recuperar versoes cadastradas na webmotors
        Then verifico o contrato das versoes





