class PagesController < ApplicationController
  def home
    @reservation = Reservation.new
  end
end
