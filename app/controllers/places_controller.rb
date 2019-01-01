class PlacesController < ApplicationController

  before_action :find_place, only: [:show]

  def index
    @places = Place.all
  end

  def show
    @place= Place.find(params[:id])
  end

  private

  def find_place
    @place = Place.find(params[:id])
  end

end
