class Listing < ApplicationRecord
  TAGS = ["Kids", "Decoration", "Fashion", "Miscellaneous", "Exercise", "Furniture"]
  acts_as_favoritable
  belongs_to :user
  has_many :orders

  validates :title, :user_id, :collection_instruction, :photo, :address, presence: true
  validates :collection_instruction, length: { maximum: 500 }

  scope :active, -> { left_joins(:orders).where.not(orders: { status: :completed }).or(left_joins(:orders).where(orders: { status: nil }) )}
  scope :pending, -> { left_joins(:orders).where(orders: { status: [:pending, nil] }) }

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
