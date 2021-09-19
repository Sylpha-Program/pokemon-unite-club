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
    @scores = Score.where(user_id: session[:user_id], pokemon_id: params[:id]).order(stage_id: :asc)
    if session[:user_id]
      @my_set = MySet.find_by(user_id: session[:user_id], pokemon_id: params[:id])
      @level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
    end
  end

  def random
    rand = Rails.env.production? ? "RANDOM()" : "rand()"
    @pokemon = Pokemon.order(rand).first
    session[:pokemon_id] = @pokemon.id
    redirect_to root_url
  end

  def score_edit
    @pokemon = Pokemon.find(params[:id])
    @stages = Stage.order(id: :asc)
    @my_set = MySet.find_by(user_id: session[:user_id], pokemon_id: params[:id])
    @level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
  end

  def score_update
    @score = Score.find_by(user_id: session[:user_id], pokemon_id: params[:id], stage: params[:stage_id])
    @previous_level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
    @score.total_point += params[:point].to_i
    @score.save
    @current_level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
    if @current_level > @previous_level
      flash[:success] = "#{@score.pokemon.name}のレベルが#{@current_level}に上がりました"
    end
    if params[:point].to_i > @score.max_point
      @score.update(max_point: params[:point])
    end
    redirect_to root_url
  end

end
