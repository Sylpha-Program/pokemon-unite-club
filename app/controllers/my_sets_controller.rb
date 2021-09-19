class MySetsController < ApplicationController

  def index
    @my_sets = MySet.order(id: :asc)
  end

  def edit
  end

  def update
  end

end
