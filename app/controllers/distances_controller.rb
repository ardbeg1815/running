class DistancesController < ApplicationController

  def index
    @distances = Distance.all
  end

  def new
    @distance = Distance.new
  end

  def create
    @distance = Distance.create(distance_params)
    if @distance.save
      redirect_to root_path
    else
      render :new
    end
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
    @distance = Distance.find(params[:id])
    @distance.update(distance_params)
    if @distance.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def distance_params
    params.require(:distance).permit(:month, :date, :distance, :weight)
  end

end