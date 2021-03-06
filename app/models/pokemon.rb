class Pokemon
  attr_reader :id, :name, :image_url

  def initialize(id)
    @id = id
    if 0 < id && id <= 151
      info = JSON.parse(Pokegem.get('pokemon', @id))
      @name = info["name"]
      @image_url = "http://img.pokemondb.net/sprites/black-white/anim/normal/#{@name.downcase}.gif"
    else
      @name = "MissingNo"
      @image_url = "missingno.png"
    end
  end

  def self.search(id)
    if id && id.to_s.length <= 3 && id.to_s =~ /^[0-9]{0,3}$/
      Pokemon.new(id.to_i)
    end
  end

end
