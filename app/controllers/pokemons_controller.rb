class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.order(id: :asc)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def random
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @pokemon = Pokemon.order(rand).first
    session[:pokemon_id] = @pokemon.id
    redirect_to root_url
  end

end
