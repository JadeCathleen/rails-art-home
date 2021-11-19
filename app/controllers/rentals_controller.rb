class RentalsController < ApplicationController
  before_action :set_rental, only: [:edit, :update, :destroy, :change_status, :cancel_rental]

  def index
    @rentals = policy_scope(Rental).order(created_at: :desc)
    @rentals_requested = Artpiece.where(user: current_user).map do |artpiece|
      artpiece.rentals
    end
  end

  def new
    @rental = Rental.new
    @artpiece = Artpiece.find(params[:artpiece_id])
    @rental.artpiece = @artpiece
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.artpiece = Artpiece.find(params[:artpiece_id])
    authorize @rental
    @rental.status = "pending"
    @rental.user = current_user
    if @rental.save
      redirect_to rentals_path
    else
      render :new
    end
  end

  def change_status
    authorize @rental
    @rental.status = params[:status]
    if @rental.save
      redirect_to rentals_path
    else
      render :index
    end
  end

  def cancel_rental
     authorize @rental
    @rental.status = params[:status]
    if @rental.save
      redirect_to rentals_path
    else
      render :index
    end
  end

  def edit
    authorize @rental
  end

  def update
    authorize @rental
    @rental.status = 'pending'
    @rental.update(rental_params)
    redirect_to rentals_path
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:start_time, :end_time)
  end
end
