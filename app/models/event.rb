class Event < ApplicationRecord
  has_many :event_user, dependent: :destroy
  has_many :user, through: :event_user
  accepts_nested_attributes_for :event_user
end
