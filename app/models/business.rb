class Business < ActiveRecord::Base
	has_many :business_users
	has_many :users, through: :business_users

	extend FriendlyId
  friendly_id :name, use: :slugged

  geocoded_by :full_address
  after_validation :geocode

  def full_address
  	[address, suburb, state, postcode].compact.join(', ')
  end
end
