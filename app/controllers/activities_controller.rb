class ActivitiesController < ApplicationController

  before_action :find_activity, only: [:show]

  def index
    @activities = Activity.all
  end

  def show
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

end
