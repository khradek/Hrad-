json.array!(@piece2s) do |piece2|
  json.extract! piece2, :id, :name, :user_id
  json.url piece2_url(piece2, format: :json)
end
