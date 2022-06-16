class Chatroom < ApplicationRecord
  # validates :user_id, :chatroom_id, presence: true
  has_many :messages, dependent: :destroy
  has_many :chatroom_users, dependent: :destroy
  has_many :users, through: :chatroom_users
end
