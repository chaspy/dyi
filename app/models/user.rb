class User < ApplicationRecord
  has_many :event_user, dependent: :destroy
  has_many :event, through: :event_user
end
