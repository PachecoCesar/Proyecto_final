class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :help]
  def index
  end

  def show
    @rent = current_user.rents.find(params[:id])
  end

  def about
  end

  def help
  end
end
