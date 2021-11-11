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
    @point = params[:own_point].to_i - params[:enemy_point].to_i
    @score.total_point += @point
    @score.save
    msg = "ポケモン：#{@score.pokemon.name},ステージ：#{@score.stage.name},スコア：#{@point}（過去最高：#{@score.max_point}）"
    msg = msg.gsub(",","<br>")
    flash[:success] = msg
    if @point > @score.max_point
      @score.update(max_point: @point)
    end
    redirect_to "/offlines"
  end

end
