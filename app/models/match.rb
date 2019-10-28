class Match < ApplicationRecord
  belongs_to :lessor, class_name: 'User', foreign_key: :lessor_id
  belongs_to :renter, class_name: 'User', foreign_key: :renter_id

  def get_user(id)
    if self.lessor_id == id
      return self.renter
    else
      return self.lessor
    end
  end
end
