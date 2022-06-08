class Chatroom < ApplicationRecord
  validates :user_id, :chatroom_id, presence: true
end
