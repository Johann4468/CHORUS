class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.instrument = @instrument
    calculate_days
    @rental.total_price = calculate_price
    @rental.acceptation = "EN-ATTENTE"

    if @rental.save
      redirect_to '/instruments/:instrument_id/rentals', notice: 'Your rental was successfully created!'
    else
      render 'instruments/show'
    end
  end

  def new
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :message_to_owner)
  end

  def calculate_days
    @total_days = @rental.end_date - @rental.start_date
    @total_days = @total_days.to_i
  end

  def calculate_price
    @total_price = @total_days * @instrument.price_per_day
  end
end
