
class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy ]
#  before_action :set_user, only: [:new, :create, :update]

  def index
    @spaces = Space.all
  end

  def show
  end

  def new
    if user_signed_in?
      @space = Space.new
    else
      redirect_to root_path
    end
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
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
     redirect_to user_path(current_user)
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

  def space_params
    params.require(:space).permit(:title, :address, :price_per_day, :description, :type_of_space, :picture, :availability)
  end

end

