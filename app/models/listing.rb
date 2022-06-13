class Listing < ApplicationRecord
  acts_as_favoritable
  belongs_to :user
  has_many :orders

  validates :title, :user_id, :collection_instruction, presence: true
  validates :collection_instruction, length: { maximum: 500 }

  has_one_attached :photo
  acts_as_taggable_on :tags

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
