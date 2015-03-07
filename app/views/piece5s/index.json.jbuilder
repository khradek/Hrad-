json.array!(@piece5s) do |piece5|
  json.extract! piece5, :id, :name, :user_id
  json.url piece5_url(piece5, format: :json)
end
