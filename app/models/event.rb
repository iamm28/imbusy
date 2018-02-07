class Event < ApplicationRecord
  belongs_to :location
  has_many :invites
  has_many :users, through: :invites 
end
