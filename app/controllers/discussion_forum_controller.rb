class DiscussionForumController < ApplicationController
  def index
  	@topics = Topic.all
  end
end
