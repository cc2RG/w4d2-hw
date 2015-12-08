class ExoplanetsController < ApplicationController

  def index
    @exoplanets = Exoplanet.all
  end  

  def new
    @exoplanet = Exoplanet.new
  end

  def show
    @exoplanet = Exoplanet.find(params[:id]) 
  end  

  def create
    Exoplanet.create(exoplanet_params)
    redirect_to(exoplanets_path)
  end

  def destroy
    exoplanet = Exoplanet.find(params[:id])
    exoplanet.destroy
    redirect_to(exoplanets_path)
  end

  def edit
    @exoplanet = Exoplanet.find(params[:id])
  end

  def update
    exoplanet = Exoplanet.find(params[:id])
    exoplanet.update(exoplanet_params)
    redirect_to(exoplanets_path)
  end  

  private 

  def exoplanet_params 
    params.require(:exoplanet).permit(:name, :distance, :disc_year, :period)
  end  

end  