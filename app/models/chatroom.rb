class Chatroom < ApplicationRecord
  # validates :user_id, :chatroom_id, presence: true
  has_many :messages
  has_many :chatroom_users
  has_many :users, through: :chatroom_users
end
