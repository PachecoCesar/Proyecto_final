class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_many :rents, dependent: :destroy


  has_many :lessors, class_name: "Interaction", foreign_key: :lessor_id, dependent: :destroy
  has_many :renters, class_name: "Interaction", foreign_key: :renter_id, dependent: :destroy

  has_many :lessor_match, class_name: "Match", foreign_key: :lessor_id, dependent: :destroy
  has_many :renter_match, class_name: "Match", foreign_key: :renter_id, dependent: :destroy

end
