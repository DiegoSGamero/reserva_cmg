class ReservationsController < ApplicationController
  # before_action :set_reservation, only: %i[show edit update destroy]

  def index
    @reservations = Reservation.all
  end

  # def show
  # end

  # def new
  #   @reservation = Reservation.new
  # end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to new_reservation_guest_path(@reservation), notice: "Reserva atualizada com sucesso!
      Se achar necessário tire um print ou foto e boa festa!"
    else
      redirect_to root_path, notice: "Todos os campos precisam estar preenhidos"
    end
  end

  def edit
  end

  def update; end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice: "Reserva excluída com sucesso!"
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserve_name, :date_only, :time_only, :reservation_type, :details)
  end
end
