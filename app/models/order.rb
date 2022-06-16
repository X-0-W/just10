class Order < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :review, dependent: :destroy

  validates :pickup_time, :status, presence: true
  # validates :status, numericality: { only_integer: true }
  validates :user, uniqueness: { scope: :listing }

  enum status: { pending: 0, accepted: 1, completed: 2, declined: 3 }
end
