class Reservation < ActiveRecord::Base

  belongs_to :space
  belongs_to :user

  validates :start_date, :end_date, :review, :total_price, presence: true

end
