class Listing < ApplicationRecord
  belongs_to :user

  validates :title, :user_id, :collection_instruction, presence: true
  validates :collection_instruction, length: { maximum: 500 }

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
