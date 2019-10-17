class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    if @rent.save
      redirect_to rent_path, notice: 'WENA CTM'
    end
  end

  def create
    #@rente = Rent.create(rent_params)
    #@rente.user = current_user
    #if @rente.save
    #redirect_to rent_path(@rente)
    #end
    #@rente.user = current_user
    @rente = Rent.new(rent_params)
    @rente.user_id = params[:user_id]
    if @rente.save
      redirect_to rent_path, notice: 'WENA CTM'
    end
  end

  def show

  end

  private
  def rent_params
    params.require(:rent).permit(:user_id, :photos, :title, :description, :address, :town, :city, :postal_code, :rooms, :bath, :price, :gender, :time, :lgtb, :pets, :smoker)
  end
end
