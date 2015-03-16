json.array!(@piece3s) do |piece3|
  json.extract! piece3, :id, :name, :user_id
  json.url piece3_url(piece3, format: :json)
end
