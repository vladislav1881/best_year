json.array!(@offers) do |offer|
  json.extract! offer, :offer_type, :rooms, :price, :address, :city_id, :discribtion, :floor, :floors
  json.url offer_url(offer, format: :json)
end