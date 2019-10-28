class RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rent, only: [:show, :edit, :update, :destroy]
  def index
    @rents = Rent.all
    @rent = Rent.new
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    @rent.save
    redirect_to profile_path(@rent)
  end

  def show
      @user = current_user
  end

  private
  def set_rent
     @rent = Rent.find(params[:id])
   end
  def rent_params
    params.require(:rent).permit(:user_id, :address, :town, :city, :title, :price, :description, :kind_of, :rooms, :period, :bath, images: [])
  end
end
