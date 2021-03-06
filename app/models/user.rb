class User < ApplicationRecord
  rolify
  after_create :assign_role

  def assign_role
    add_role(:user)
  end

  has_many :apartments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:twitter]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.uid + "@twitter.com"
      user.password = Devise.friendly_token[0,20]
    end
  end
end
