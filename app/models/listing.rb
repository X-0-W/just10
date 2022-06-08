class Listing < ApplicationRecord
  belongs_to :user

  validates :title, :user_id, :collection_instruction, presence: true
  validates :collection_instruction, length: { maximum: 500 }

  has_one_attached :photo
  has_many :orders
end
