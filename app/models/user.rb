class User < ApplicationRecord
  has_secure_password
  has_many :invites
  has_many :events, through: :invites

  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships


  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end


end
