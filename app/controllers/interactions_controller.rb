class InteractionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @your_likes = current_user.lessors
    @giver_likes = current_user.renters
  end
end
