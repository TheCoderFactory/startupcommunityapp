json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :logo, :description, :slug, :owner, :latitude, :longitude, :address, :suburb, :state, :postcode
  json.url business_url(business, format: :json)
end
