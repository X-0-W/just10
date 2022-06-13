class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :address, presence: true

  has_many :orders, dependent: :destroy
  has_many :listings, dependent: :destroy
  has_many :reviews, through: :orders, source: :review

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def score
    (reviews.where(approval: true).size.fdiv(reviews.size) * 100).round()
  end
end
