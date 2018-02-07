class User < ApplicationRecord
  has_secure_password
  has_many :invites
  has_many :events, through: :invites
end
