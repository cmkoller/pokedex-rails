class PokedexsController < ApplicationController
  def index
    @pokemon = Pokemon.search(params[:poke_id])
  end
end
