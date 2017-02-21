class TreehousesController < ApplicationController
  def index
  	@treehouses = Treehouse.all
  end

  def show
  end
end
