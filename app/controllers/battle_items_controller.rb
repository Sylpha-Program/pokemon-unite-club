class BattleItemsController < ApplicationController

  def index
    @battle_items = BattleItem.order(id: :asc)
  end

end
