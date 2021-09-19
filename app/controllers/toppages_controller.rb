class ToppagesController < ApplicationController

  def index
    if session[:pokemon_id]
      @pokemon = Pokemon.find_by(id: session[:pokemon_id])
      if session[:user_id]
        @my_set = MySet.find_by(user_id: session[:user_id], pokemon_id: session[:pokemon_id])
        @level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: session[:pokemon_id]).sum(:total_point)) / 10).floor
      end
    end
  end
  
end
