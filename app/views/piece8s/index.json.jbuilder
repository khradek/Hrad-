json.array!(@piece8s) do |piece8|
  json.extract! piece8, :id, :name, :user_id
  json.url piece8_url(piece8, format: :json)
end
