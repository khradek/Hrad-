json.array!(@piece7s) do |piece7|
  json.extract! piece7, :id, :name, :user_id
  json.url piece7_url(piece7, format: :json)
end
