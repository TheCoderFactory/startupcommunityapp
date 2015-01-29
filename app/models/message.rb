class Message < ActiveRecord::Base

	def self.received_messages(current_user_id)
		where(receiver_id: current_user_id)
	end

	def self.sent_messages(current_user_id)
		where(sender_id: current_user_id)
	end

	def mark_as_read
		update_attributes(read: true)
	end
end
