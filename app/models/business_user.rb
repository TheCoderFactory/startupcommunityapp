class BusinessUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :business
end
