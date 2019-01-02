class PlacesController < ApplicationController

  before_action :find_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
    @places.each do |city|
      @city
  end
end

  def city
    @city = Place.find(params[:id])
  end

  def show

  end

  def new
    @place = Place.new
  end

  def create
    byebug
    @place = Place.new(place_params)
    byebug
    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private

  def find_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:city, :image_url)
  end

end
