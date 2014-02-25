json.array!(@photos) do |photo|
  json.extract! photo, :user_id, :offer_id
  json.url photo_url(photo, format: :json)
end