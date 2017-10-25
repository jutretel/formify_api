class Event < ApplicationRecord
  belongs_to :user
  belongs_to :event_type
  belongs_to :location

  has_many :users, :through => :event_users
  has_many :comments
end
