class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    @rent.save
    redirect_to rent_path
  end

  def show
    
  end
end
