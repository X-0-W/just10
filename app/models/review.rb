class Review < ApplicationRecord
  belongs_to :order
  has_one :listing, through: :order
  has_one :user, through: :listing
end
