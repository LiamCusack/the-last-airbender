class NationMember
  attr_reader :name, :allies, :enemies, :affiliation

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @image = data[:photoUrl]
  end

  def allies
    if @allies == []
       "none"
    end
  end

  def enemies
    if @enemies == []
       "none"
    end
  end
end
