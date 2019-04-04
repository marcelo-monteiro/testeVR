require_relative '../modules/data_parse.rb'

# Class to deal wiht API Via CEP
class ApiViaCep
  attr_reader :url_via_cep

  include DataParse

  def initialize
    @url_via_cep = DATA['url_via_cep']
  end

  def persistent_connection
    url = URI.parse(url_via_cep)

    Net::HTTP.start(url.host,
                    url.port)
  end

  def send_request(cep)
    json_endpoint = "/ws/#{cep}/json/"
    post_cep = Net::HTTP::Get.new(json_endpoint)
    post_cep['cache-control'] = 'no-cache'

    response = persistent_connection.request(post_cep)
    code = response.code
    body = response.read_body

    body_json = parse_json(body) if code == '200'

    ibge = body_json['ibge'] if body_json.nil? != true

    [code, body_json, ibge]
  end
end
