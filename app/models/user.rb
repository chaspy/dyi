class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :event_user, dependent: :destroy
  has_many :event, through: :event_user
  has_many :group_user, dependent: :destroy
  has_many :group, through: :group_user
end
