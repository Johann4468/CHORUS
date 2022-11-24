class Owner::InstrumentsController < ApplicationController
  def index
    @instruments = current_user.instruments
  end

  def new
  end

  def create
  end
end
