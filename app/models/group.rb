class Group < ApplicationRecord
  has_many :group_user, dependent: :destroy
  has_many :user, through: :group_user
  accepts_nested_attributes_for :group_user
end
