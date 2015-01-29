class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :number_unread


  def number_unread
  	Message.where(receiver_id: current_user.id, read: nil).count if current_user
  end

  helper_method :number_unread
end
