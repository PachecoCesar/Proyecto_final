class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new

  end

  def create
    @rente = Rent.new(rent_params)
    @rente.user = current_user
    @rente.save
    redirect_to rent_path(@rente)
  end

  def show
    
  end
end


private
def rent_params
      params.require(:rent).permit(:photos, :title, :description, :address, :town, :city, :postal_code, :rooms, :bath, :price, :gender, :time, :lgtb, :pets, :smoker)
    end
