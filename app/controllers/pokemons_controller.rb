class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.order(id: :asc)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @r_skill = Skill.find_by(pokemon_id: params[:id], button: 0)
    @r_skills = Skill.where(pokemon_id: params[:id], button: 0)
    @zr_skill = Skill.find_by(pokemon_id: params[:id], button: 1)
    @zr_skills = Skill.where(pokemon_id: params[:id], button: 1)
  end

  def random
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @pokemon = Pokemon.order(rand).first
    session[:pokemon_id] = @pokemon.id
    redirect_to root_url
  end

end
