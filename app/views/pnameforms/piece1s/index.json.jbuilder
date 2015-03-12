json.array!(@piece1s) do |piece1|
  json.extract! piece1, :id, :name, :user_id
  json.url piece1_url(piece1, format: :json)
end
