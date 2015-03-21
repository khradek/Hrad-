json.array!(@piece11s) do |piece11|
  json.extract! piece11, :id, :name, :user_id, :pnameform_id
  json.url piece11_url(piece11, format: :json)
end
