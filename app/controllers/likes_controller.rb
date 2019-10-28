class LikesController < ApplicationController
  def update
  interaction = Interaction.update(params[:id], application: true)
  match = Interaction.where(renter_id: current_user.id, lessor_id: interaction.renter.id, application: true)
    if match.length.positive?
      redirect_to _path(interaction.renter.id), notice: 'postulante aceptado'
    else
      redirect_to like_path
    end
  end
end
