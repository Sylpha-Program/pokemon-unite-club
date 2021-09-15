class ToppagesController < ApplicationController

  def index
    if session[:pokemon_id]
      @pokemon = Pokemon.find_by(id: session[:pokemon_id])
    end
  end
  
end
