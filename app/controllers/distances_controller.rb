class DistancesController < ApplicationController

  def index
    @distances = Distance.all
  end

  def new
    @distance = Distance.new
  end

  def create
    Distance.create(distance_params)
    redirect_to root_path
  end

  def destroy
    distance = Distance.find(params[:id])
    distance.destroy
    redirect_to root_path
  end

  def edit
    @distance = Distance.find(params[:id])
  end

  def update
    distance = Distance.find(params[:id])
    distance.update(distance_params)
    redirect_to root_path
  end

  private
  def distance_params
    params.require(:distance).permit(:month, :date, :distance, :weight)
  end

end