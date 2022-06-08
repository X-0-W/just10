class Review < ApplicationRecord
  belongs_to :transaction

  validates :approval, presence: true
end
