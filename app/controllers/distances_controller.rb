class DistancesController < ApplicationController

  def index
    @distances = Distance.all
  end

  def new
    @distance = Distance.new
  end

  def create
    Distance.create(distance_params)
  end

  def destroy
    distance = Distance.find(params[:id])
    distance.destroy
  end

  private
  def distance_params
    params.require(:distance).permit(:month, :date, :distance, :weight)
  end

end