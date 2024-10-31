class ReservationsController < ApplicationController
  # before_action :set_reservation, only: %i[show edit update destroy]

  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    date = Date.parse(reservation_params[:date_only])
    time = Time.parse(reservation_params[:time_only])
    datetime = DateTime.new(date.year, date.month, date.day, time.hour, time.min, time.sec)

    @reservation = Reservation.new(reservation_params.except(:date_only, :time_only))
    @reservation.date = datetime

    if @reservation.save
      redirect_to @reservation, notice: "Reserva criada com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to @reservation, notice: "Reserva atualizada com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice: "Reserva excluída com sucesso!"
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserve_name, :date_only, :time_only, :details)
  end
end
