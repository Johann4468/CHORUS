class Owner::RentalsController < ApplicationController
  def index
    @my_rentals = Rental.includes(:instrument).where(instruments: { user_id: current_user.id })
  end

  def show
  end
end
