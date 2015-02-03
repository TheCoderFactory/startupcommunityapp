class Discussion < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  acts_as_commentable
end
