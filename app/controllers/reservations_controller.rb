class ReservationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @reservations = Reservation.where(user: current_user)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @course = Course.find(params[:course_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.course = @course
    @reservation.price = @course.price
    if @reservation.save
      redirect_to reservations_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end
end
