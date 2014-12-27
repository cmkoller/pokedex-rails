class PokedexController < ApplicationController
  def index
    @pokemon = Pokemon.search(params[:search])
  end

end
