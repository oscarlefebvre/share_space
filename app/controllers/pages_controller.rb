class PagesController < ApplicationController
  before_action :find_space, only: [ :new, :create ]
  def home
    @space = Space.new
    @reservation = @space.reservations.new

  end
end
