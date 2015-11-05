class ReservationsController < ApplicationController
  before_action :find_space, only: [ :new, :create ]

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def new
    @space = Space.new
    @reservation = @space.reservations.new


    @reservation.end_date = params[:end_date].to_date
    @reservation.start_date = params[:start_date].to_date
    @reservation.total_price = params[:total_price].to_i
  end

  def create
    @reservation = @space.reservations.build(reservation_params)
    @reservation.save
    redirect_to reservations_path(@space_reservations)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :total_price)
  end
  def find_space
    @space = Space.find(params[:space_id])
  end
end
