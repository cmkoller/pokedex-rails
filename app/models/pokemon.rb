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
      @image_url = "/assets/missingno.png"
    end
  end

  def self.search(id)
    # binding.pry
    if id.to_s.length == 3 && id.to_s =~ /^[0-9]{0,3}$/
      Pokemon.new(id.to_i)
    end
  end

end
