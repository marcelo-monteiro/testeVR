Dado('que eu consulto na API o CEP {string}') do |cep|
  @cep = cep
  _code, _body_json, ibge = @api_viacep.send_request(@cep)
  puts "\t Número IBGE: #{ibge}" if ibge.nil? == false
end

Entao('eu consigo visualizar os dados do CEP') do
  _code, body_json, _ibge = @api_viacep.send_request(@cep)
  if body_json.nil? == false
    puts "\t Dados do CEP: #{body_json}"
  else
    puts 'Sem dados para exibir'
  end
end

Entao('eu espero receber a mensagem de CEP invalido da API') do
  code, _body_json, _ibge = @api_viacep.send_request(@cep)
  puts 'Por favor insira um CEP no formato válido' if code == '400'
end

Entao('eu espero receber a mensagem de CEP inexistente da API') do
  code, body_json, _ibge = @api_viacep.send_request(@cep)
  puts 'Por favor insira um CEP existente' if body_json['erro'] == true && code == '200'
end
