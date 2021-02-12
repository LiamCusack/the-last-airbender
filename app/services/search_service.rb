class SearchService
  def self.conn #not working, realize this is not the same type of object we have previously been working with
    @@conn ||= Faraday.new(url: "https://https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}")
  end

  def self.get_members(nation)
    binding.pry
    response = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation.gsub("_", "+")}")
    response
  end
end
