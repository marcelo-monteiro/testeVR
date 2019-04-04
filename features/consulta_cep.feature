#language: pt
@consulta_cep
Funcionalidade: Funcionalidade de Consultar CEP
    Funcionalidade para analise de CEP's enviados para a API Via CEP

  @cep_valido
  Cenario: Consultar CEP valido
    Dado que eu consulto na API o CEP "04654-010"
    Entao eu consigo visualizar os dados do CEP

  @cep_invalido
  Cenario: Consultar CEP invalido
    Dado que eu consulto na API o CEP "000a000a"
    Entao eu espero receber a mensagem de CEP invalido da API

  @cep_inexistente
  Cenario: Consultar CEP inexistente
    Dado que eu consulto na API o CEP "00000-000"
    Entao eu espero receber a mensagem de CEP inexistente da API