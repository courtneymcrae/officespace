class RoomsController < ApplicationController
  
  def index
    @rooms = current_user.rooms
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = current_user.rooms.build 
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save 
      redirect_to @room
    else 
      render :new
    end
  end

  def edit
     @room = Room.find(params[:id])
  end

  def update
    if @room.update(room_params)
      redirect_to @room, 
     @room = Room.find(params[:id])
  end
end

  def room_params 
    params.require(:room).permit(:home_type, :room_type, :accommodate, :room, :bath_room, :listing_name, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :active)
  end
end
