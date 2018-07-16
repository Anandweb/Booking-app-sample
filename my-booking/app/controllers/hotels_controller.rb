class HotelsController < ApplicationController
  def index
    @hotels=Hotel.all;
  end
  def new
    @hotel=Hotel.new
  end
  def edit
    @hotel=Hotel.find(params[:id])
  end
  def create
    @hotel=Hotel.new(params[:hotel])
    if @hotel.save
        redirect_to hotels_path ,:notice=>"Details have been added!!!!"
    else
        render "new"
    end
  end
  def show
    @hotel=Hotel.find(params[:id]);
  end
  def update
    @hotel=Hotel.find(params[:id])
    if @hotel.update_attributes(params[:hotel])
      redirect_to hotels_path ,:notice=>"Details have been updated!!!!"
    else
      render "edit"
    end
  end
  def destroy
    @hotel=Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_path ,:notice=>"Details have been deleted!!!!"
  end
  def availability
    data_id = params[:data_id]
    @hotel=Hotel.find(data_id)
    @hotel.availability=@hotel.availability.to_i-1;
    if @hotel.update_attributes(params[:hotel])
      render json: {data: 'success'}
    else
      render "show"
    end
  end

end
