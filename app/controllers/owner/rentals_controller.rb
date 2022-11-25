class Owner::RentalsController < ApplicationController
  def index
    @my_rentals = Rental.includes(:instrument).where(instruments: { user_id: current_user.id })
  end

  def show
  end

  def accept
    @rental = Rental.find(params[:id])
    @rental.update(acceptation: 'ACCEPTEE')
    redirect_to owner_rentals_path
  end

  def refuse
    @rental = Rental.find(params[:id])
    @rental.update(acceptation: 'REFUSEE')
    redirect_to owner_rentals_path
  end
end
