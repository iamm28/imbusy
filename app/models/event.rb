class Event < ApplicationRecord
  belongs_to :location
  has_many :invites, dependent: :destroy
  has_many :users, through: :invites
end
