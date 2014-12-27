class PokedexController < ApplicationController
  def index
    @pokemon = Pokemon.search(params[:search])
    # binding.pry
  end

end
