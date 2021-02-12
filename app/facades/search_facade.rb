class SearchFacade
  def self.get_members(nation)
    members = SearchService.get_members(nation)
    create_members(members)
  end

  private

  def self.create_members(members)
    members.map do |member|
      NationMember.new(member)
  end
end
