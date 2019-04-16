class GalaxiesController < ApplicationController
  def index
    @galaxies = Galaxy.all
  end

  def new
    @galaxy = Galaxy.new
    @galaxy.planets.new
  end

  def create
    @galaxy = Galaxy.create(allowed_params)
    if @galaxy.errors.any?
      render :new
    else
      redirect_to galaxies_path
    end
  end


  private

  def allowed_params
      params.require(:galaxy).permit(:name, planets_attributes: :name )

  end
end
