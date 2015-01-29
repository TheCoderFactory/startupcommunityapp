class InboxController < ApplicationController
  def index
  	@messages = Message.received_messages(current_user.id)
  	@sent_messages = Message.sent_messages(current_user.id)
  end
end
