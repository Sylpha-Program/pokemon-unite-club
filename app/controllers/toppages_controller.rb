class ToppagesController < ApplicationController

  def index
    if session[:pokemon_id]
      @pokemon = Pokemon.find_by(id: session[:pokemon_id])
      if session[:user_id]
        @my_set = MySet.find_by(user_id: session[:user_id], pokemon_id: session[:pokemon_id])
      end
    end
  end
  
end
