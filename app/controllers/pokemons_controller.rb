class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.order(id: :asc)
  end

  def show
  end

end
