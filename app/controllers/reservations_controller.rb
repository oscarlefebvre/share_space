class ReservationsController < ApplicationController
  before_action :find_space, only: [ :new, :create ]

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def new
    @checkin = session["checkin"]
    @checkout = session["checkout"]
    @reservation = Reservation.new
    @total_price = @space.price_per_day*5
  end

  def create

    @reservation = @space.reservations.build(reservation_params)
    if @reservation.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id  )
  end
  def find_space
    @space = Space.find(params[:space_id])
  end
end
