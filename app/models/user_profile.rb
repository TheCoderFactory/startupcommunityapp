class UserProfile < ActiveRecord::Base
  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

  def self.newest
  	order(created_at: :desc)
  end
end
