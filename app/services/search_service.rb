class SearchService
  def self.conn
    @@conn ||= Faraday.new(url: "https://https://last-airbender-api.herokuapp.com/api/v1/characters")
  end

  def self.get_members(nation)
    response = conn.get("?affiliation=#{nation}")
    members = json_parse(response)
  end

  private

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
