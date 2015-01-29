class User < ActiveRecord::Base
	has_one :user_profile
	has_many :business_users
	has_many :businesses, through: :business_users
	has_many :posts
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
