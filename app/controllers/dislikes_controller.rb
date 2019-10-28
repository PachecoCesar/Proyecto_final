class DislikesController < ApplicationController
  def update
  Interaction.update(params[:id], like: false)
  redirect_to dislike_path
  end
end
