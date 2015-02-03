class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@businesses = Business.newest.limit(5)
  	@user_profiles = UserProfile.newest.limit(5)
  end
end
