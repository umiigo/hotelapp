class RoomsController < ApplicationController
  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
<<<<<<< HEAD
  before_action :is_authorised, only: [:listing, :pricing, :description, :photo_upload, :amenities, :location, :update]
=======
>>>>>>> 087a17a... added paperclip

  def index
    @rooms = current_user.rooms
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
      redirect_to listing_room_path(@room), notice: "Saved..."
    else
      flash[:alert] = "Something went wrong..."
      render :new
    end
  end

  def show
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
<<<<<<< HEAD
    @photos = @room.photos
=======
>>>>>>> 087a17a... added paperclip
  end

  def amenities
  end

  def location
  end

  def update
<<<<<<< HEAD
    new_params = room_params
    new_params = room_params.merge(active: true) if is_ready_room
    if @room.update(new_params)
=======
    if @room.update(room_params)
>>>>>>> 087a17a... added paperclip
      flash[:notice] = 'Saved...'
    else
      flash[:notice] = 'Something Went Wrong...'
    end
    redirect_back(fallback_location: request.referer)
  end

  private 
    def set_room
      @room = Room.find(params[:id])
    end

<<<<<<< HEAD
    def is_authorised
      redirect_to root_path, alert: "You don't have permission" unless current_user.id == @room.user_id
    end

    def is_ready_room
      !@room.active && !@room.price.blank? && !@room.listing_name.blank? && !@room.photos.blank? && !@room.address.blank?
    end

=======
>>>>>>> 087a17a... added paperclip
    def room_params
      params.require(:room).permit(:home_type, :room_type, :accommodate, :bed_room, :bath_room, :listing_name, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :active)
    end
end
