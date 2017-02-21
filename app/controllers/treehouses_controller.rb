class TreehousesController < ApplicationController
  def index
  	@treehouses = Treehouse.all
  end

  def show
  end

  def product_params
  params.require(:treehouse).permit(:name, :description, photos: [])
  end
end
