
class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy ]

  def index
    @spaces = Space.all
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    equipements = params[:space][:equipements][0, params[:space][:equipements].size - 1]*', '
    @space.equipements = equipements
    range_of_pers = params[:space][:nb_of_pers]
    case range_of_pers
    when "1..10"
      nb_of_pers = 1
    when "10..20"
      nb_of_pers = 10
    when "20..30"
      nb_of_pers = 20
    else
      nb_of_pers = 30
    end
    @space.nb_of_pers = nb_of_pers
    if @space.save
      redirect_to space_path(@space)
    else
    render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path(@space)
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.

  def space_params
    params.require(:space).permit(:title, :address, :price_per_day, :description, :type_of_space, :picture, :availability)
  end

end

