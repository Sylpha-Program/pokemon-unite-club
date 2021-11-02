class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.order(id: :asc)
    @offline = Offline.find_by(user_id: session[:user_id], pokemon_id: 24, stage_id: 1)
    @offline.total_point = 30
    @offline.save
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

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      Stage.order(id: :asc).each do |stage|
        Score.create(user_id: session[:user_id], pokemon_id: @pokemon.id, stage_id: stage.id)
      end
      MySet.create(user_id: session[:user_id], pokemon_id: @pokemon.id)
      flash[:success] = '登録しました。'
      redirect_to root_url
    else
      flash.now[:danger] = '登録に失敗しました。'
      render :new
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
    @score = Score.find_by(user_id: session[:user_id], pokemon_id: params[:id], stage_id: params[:stage_id])
    @previous_level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
    @score.total_point += params[:point].to_i
    @score.save
    @current_level = Math.sqrt((Score.where(user_id: session[:user_id], pokemon_id: params[:id]).sum(:total_point)) / 10).floor
    if @current_level > @previous_level
      msg = "ポケモン：#{@score.pokemon.name},ステージ：#{@score.stage.name},スコア：#{params[:point].to_i}（過去最高：#{@score.max_point}）,レベル：Lv.#{@previous_level}→Lv.#{@current_level}"
      msg = msg.gsub(",","<br>")
      flash[:success] = msg
    else
      msg = "ポケモン：#{@score.pokemon.name},ステージ：#{@score.stage.name},スコア：#{params[:point].to_i}（過去最高：#{@score.max_point}）"
      msg = msg.gsub(",","<br>")
      flash[:success] = msg
    end
    if params[:point].to_i > @score.max_point
      @score.update(max_point: params[:point])
    end
    redirect_to root_url
  end

  def skill_new
    @pokemon = Pokemon.find(params[:id])
    @skill = Skill.new
  end

  def skill_create
    @skill = Skill.new(pokemon_id: params[:id], name: params[:name], image: params[:image], button: params[:button], attack_category: params[:attack_category], level: params[:level], cool_time: params[:cool_time], attack_type: params[:attack_type])
    if @skill.save
      flash[:success] = '登録しました。'
      redirect_to root_url
    else
      flash.now[:danger] = '登録に失敗しました。'
      render :skill_edit
    end
  end

  def skill_edit
    @pokemon = Pokemon.find(params[:id])
    @skills = Skill.where(pokemon_id: params[:id])
  end

  def skill_update
    @skill = Skill.find_by(id: params[:skill_id])
    if @skill.update(cool_time: params[:cool_time], attack_type: params[:attack_type])
      flash[:success] = '更新しました。'
      redirect_to root_url
    else
      flash.now[:danger] = '更新に失敗しました。'
      render :skill_edit
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image, :attack_type, :role, :attack_category)
  end

end
