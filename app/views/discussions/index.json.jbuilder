json.array!(@discussions) do |discussion|
  json.extract! discussion, :id, :user_id, :title, :content, :topic_id
  json.url discussion_url(discussion, format: :json)
end
