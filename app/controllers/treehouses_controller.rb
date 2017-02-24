class TreehousesController < ApplicationController

  layout "search", only: [ :search ]


  def index
  	@treehouses = Treehouse.all
    @mapped_treehouses = Treehouse.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@mapped_treehouses) do |treehouse, marker|
      marker.lat treehouse.latitude
      marker.lng treehouse.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def search
    @address = params["treehouse"]["address"]

    # if there's an address...
    @treehouses = @address ? Treehouse.near(@address, 50) : Treehouse.all
    # @treehouses = Treehouse.near(@address, 50) if @address

    # if the address results return 0 results
    if @treehouses.length == 0
      @treehouses = Treehouse.all
      @empty_results = true
    end
    # @treehouses = @treehouses.length == 0 ? Treehouse.all : @treehouses 

    @treehouses.limit(20)
    # @treehouses = Treehouse.all
    @mapped_treehouses = @treehouses.select { |t| !t.latitude.nil? && !t.longitude.nil? }

    @hash = Gmaps4rails.build_markers(@mapped_treehouses) do |treehouse, marker|
      marker.lat treehouse.latitude
      marker.lng treehouse.longitude
      # marker.infowindow treehouse.name
      marker.infowindow render_to_string(partial: "/treehouses/map_box", locals: { treehouse: treehouse })




       # {
       #        "lat": <%= @treehouse.latitude %>,
       #        "lng": <%= @treehouse.longitude %>,
       #        "infowindow": "<p><%= @treehouse.name %></p><img src='<%= cl_image_path @treehouse.photos.first.path %>' height='200'></p>"
       #      }
    end
  end


  def show
  	@treehouse = Treehouse.find(params[:id])
    @booking = Booking.new
    # @alert_message = "You are viewing #{@treehouse.name}"
    @treehouse_coordinates = { lat: @treehouse.latitude, lng: @treehouse.longitude }

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
  	@treehouse = Treehouse.find(params[:id])
    @treehouse.update(treehouse_params)
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

  def mytrees
    @owned_trees = Treehouse.where(owner_id: current_user.id)
  end

  def treehouse_params
  params.require(:treehouse).permit(:name, :description, :category, :capacity, :bed_count, :address, :zip_code, :city, :country, :tree_type, :rate, photos: [])
  end
end
