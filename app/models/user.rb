class User < ApplicationRecord
  has_many :event_user, dependent: :destroy
  has_many :event, through: :event_user
  has_many :group_user, dependent: :destroy
  has_many :group, through: :group_user
end
