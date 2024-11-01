class GuestsController < ApplicationController

  def new
    @guest = Guest.new
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    def create
      @reservation = Reservation.find(params[:guest][:reservation_id])
      guests_names = params[:guest][:guests_names].split(',').map(&:strip) # Divide a string em uma lista de nomes

      guests_names.each do |name|
        @reservation.guests.create(guest_name: name)
      end

      redirect_to root_path, notice: "Convidados adicionados com sucesso!"
    end
  end
end
