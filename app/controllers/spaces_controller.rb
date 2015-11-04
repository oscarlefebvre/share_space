
class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy ]

  def index
    raise
    @spaces = Space.all
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
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
    params.require(:space).permit(:title, :address, :price_per_day, :nb_of_pers, :description, :equipements, :type_of_space, :picture)
  end

end

