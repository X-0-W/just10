class Review < ApplicationRecord
  belongs_to :order
  validates :approval, presence: true
end
