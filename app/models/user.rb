class User < ApplicationRecord
	has_many :events, :through => :event_users, :dependent => :destroy
end
