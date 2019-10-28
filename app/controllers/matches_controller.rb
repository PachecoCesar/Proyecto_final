class MatchesController < ApplicationController
  def index
    @rent = Interaction.where(lessor_id: current_user.id, application: true).pluck(:renter_id)
    @matches = Interaction.where(renter_id: current_user.id, lessor_id: rent)
  end
end
