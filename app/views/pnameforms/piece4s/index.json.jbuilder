json.array!(@piece4s) do |piece4|
  json.extract! piece4, :id, :name, :user_id
  json.url piece4_url(piece4, format: :json)
end
