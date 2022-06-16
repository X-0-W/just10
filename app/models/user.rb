class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :address, presence: true

  has_many :orders, dependent: :destroy
  has_many :chatroom_users, dependent: :destroy
  has_many :chatrooms, through: :chatroom_users
  has_many :listings, dependent: :destroy
  has_many :seller_orders, through: :listings, source: :orders
  has_many :seller_reviews, through: :seller_orders, source: :review

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def score
    (seller_reviews.where(approval: true).size.fdiv(seller_reviews.size) * 100).round
  end

  def notifications_count
    seller_orders.where(status: :pending).count + orders.where(status: :accepted).count
  end

  def chatroom_with(other_user)
    @chatroom ||= Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: other_user.id})
    .and(Chatroom.joins(:chatroom_users).where(chatroom_users:{user_id: id})).first
  end
end
