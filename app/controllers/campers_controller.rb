class CampersController < ApplicationController
  before_action :find_campers, only: [:show, :edit, :update]

  def index
    @campers = Camper.all
  end

  def show
  end

  def new
    @camper = Camper.new
  end

  def create
    camper = Camper.create(camper_params)
      if camper.valid?
        camper.save
        redirect_to camper_path(camper)
      else
        flash[:my_errors] = camper.errors.full_messages
        redirect_to new_camper_path
      end
  end

  def edit
  end

  def update
    @camper = Camper.update(camper_params)
    redirect_to camper_path(@camper)
  end

private

  def find_campers
    @camper = Camper.find(params[:id])
  end

  def camper_params
    params.require(:camper).permit!
  end

end
