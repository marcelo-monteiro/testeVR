# DataParsing modules (for JSON and XML)
module DataParse
  def parse_xml(body)
    Nori.new.parse(body)
  end

  def parse_json(body)
    JSON.parse(body)
  end
end
