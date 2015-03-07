json.array!(@piece10s) do |piece10|
  json.extract! piece10, :id, :name, :user_id
  json.url piece10_url(piece10, format: :json)
end
