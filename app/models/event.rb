class Event < ApplicationRecord
  belongs_to :user
  belongs_to :event_type
  belongs_to :location

  has_many :event_users, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
