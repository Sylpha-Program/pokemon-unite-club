class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.order(id: :asc)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

end
