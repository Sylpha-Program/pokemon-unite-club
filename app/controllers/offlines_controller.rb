class OfflinesController < ApplicationController

  def show
    @stage = Stage.find(1)
    @scores = Offline.where(user_id: session[:user_id], stage_id: 1).order(pokemon_id: :asc)
  end

  def score_edit
    @pokemons = Pokemon.order(id: :asc)
  end

  def score_update
    @score = Offline.find_by(user_id: session[:user_id], pokemon_id: params[:pokemon_id], stage_id: 1)
    @score.total_point += params[:point].to_i
    @score.save
    if params[:point].to_i > @score.max_point
      @score.update(max_point: params[:point])
    end
    redirect_to "/offlines"
  end

end
