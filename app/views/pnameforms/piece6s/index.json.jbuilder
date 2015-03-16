json.array!(@piece6s) do |piece6|
  json.extract! piece6, :id, :name, :user_id
  json.url piece6_url(piece6, format: :json)
end
