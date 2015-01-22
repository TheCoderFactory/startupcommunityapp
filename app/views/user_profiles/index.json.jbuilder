json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :user_id, :name, :email, :phone, :tagline, :about, :url, :blog, :twitter, :facebook, :linkedin, :google, :github, :image, :slug
  json.url user_profile_url(user_profile, format: :json)
end
