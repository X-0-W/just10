class Listing < ApplicationRecord
  belongs_to :user

  validates :title, :user_id, :collection_instruction, presence: true
  validates :collection_instruction, length: { maximum: 500 }

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
