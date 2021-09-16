class ToolsController < ApplicationController

  def index
    @tools = Tool.order(id: :asc)
  end

end
