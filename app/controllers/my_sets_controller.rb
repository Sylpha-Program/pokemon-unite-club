class MySetsController < ApplicationController

  before_action :require_user_login
  before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @my_sets = MySet.order(id: :asc)
  end

  def edit
    @r_skills = Skill.where(pokemon_id: @my_set.pokemon.id, button: 0)
    @zr_skills = Skill.where(pokemon_id: @my_set.pokemon.id, button: 1)
    @battle_items = BattleItem.order(id: :asc)
    @tools = Tool.order(id: :asc)
  end

  def update
    if @my_set.update(my_set_params)
      flash[:success] = '更新しました。'
      redirect_to my_sets_path
    else
      flash.now[:danger] = '更新に失敗しました。'
      render :edit
    end
  end

  private

  def my_set_params
    params.require(:my_set).permit(:r_skill_id, :zr_skill_id, :battle_item_id, :tool_1_id, :tool_2_id, :tool_3_id)
  end

  def ensure_correct_user
    @my_set = MySet.find(params[:id])
    if @my_set.user_id != current_user.id
      flash[:danger] = "権限がありません"
      redirect_to root_url
    end
  end

end
