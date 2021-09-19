class StagesController < ApplicationController

  def index
    @stages = Stage.order(id: :asc)
  end

  def show
    @stage = Stage.find(params[:id])
    @scores = Score.where(user_id: session[:user_id], stage_id: params[:id]).order(pokemon_id: :asc)
  end

end
