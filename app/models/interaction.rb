class Interaction < ApplicationRecord
  belongs_to :lessor, class_name: 'User'
  belongs_to :renter, class_name: 'User'

  validates :lessor, uniqueness: {scope: :user_two_id, message: "cant interact twice with the same user"}
  validate :cant_interact_myself
  after_save :check_match

  def cant_interact_myself
    if self.lessor.id == self.renter.id
      errors.add(:expiration_date, "can't interact with myself")
    end
  end

  def check_match
    i = Interaction.where(lessor: self.lessor, renter:self.lessor)
    unless i.empty?
      Match.create(lessor_id: self.lessor.id, renter_id: self.renter.id)    end
  end
end
