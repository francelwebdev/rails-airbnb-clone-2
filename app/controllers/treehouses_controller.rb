class TreehousesController < ApplicationController
  def index
  	@treehouses = Treehouse.all
  end

  def show
  end

  def new
  	@treehouse = Treehouse.new
  end

  def create
  	@treehouse = Treehouse.new(treehouse_params)
  	@treehouse.owner = current_user
  	if @treehouse.save 
  		redirect_to treehouse_path(@treehouse)
  	else
  		render :new
  	end
  end

  def treehouse_params
  params.require(:treehouse).permit(:name, :description, photos: [])
  end
end
