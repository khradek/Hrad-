json.array!(@piece9s) do |piece9|
  json.extract! piece9, :id, :name, :user_id
  json.url piece9_url(piece9, format: :json)
end
