class Pokemon
  attr_reader :id, :name, :image_url

  def initialize(id)
    @id = id
    if id <= 151
      info = JSON.parse(Pokegem.get 'pokemon', @id)
      @name = info["name"]
      @image_url = "http://img.pokemondb.net/sprites/black-white/anim/normal/#{@name.downcase}.gif"
    else
      @name = "MissingNo"
      @image_url = "/img/missingno.png"
    end
  end

  def self.search(id)
    if id
      Pokemon.new(id)
    end
  end

end
