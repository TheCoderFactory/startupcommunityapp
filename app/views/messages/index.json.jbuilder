json.array!(@messages) do |message|
  json.extract! message, :id, :subject, :body, :sender_id, :receiver_id, :read
  json.url message_url(message, format: :json)
end
