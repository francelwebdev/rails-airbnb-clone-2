class TreehousesController < ApplicationController
  def index
  	@treehouses = Treehouse.all
  end

  def show
  	@treehouse = Treehouse.find(params[:id])
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


  def edit
  	@treehouse = Treehouse.find(params[:id])
  end

  def update
  	@treehouse = Treehouse.new(treehouse_params)
  	if @treehouse.save
  		redirect_to treehouse_path(@treehouse)
  	else
  		render :new
  	end
  end

  def destroy
  	@treehouse = Treehouse.find(params[:id])
  	@treehouse.destroy
  	redirect_to treehouses_path
  end

  def treehouse_params
  params.require(:treehouse).permit(:name, :description, :category, :capacity, :bed_count, :location, :tree_type, :rate, photos: [])
  end
end
