class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :confirmable, omniauth_providers: %i(github)
  has_many :event_user, dependent: :destroy
  has_many :event, through: :event_user
  has_many :group_user, dependent: :destroy
  has_many :group, through: :group_user
  
  def self.create_unique_string
    SecureRandom.uuid
  end
end
