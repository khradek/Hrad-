json.array!(@piece25s) do |piece25|
  json.extract! piece25, :id, :name, :user_id, :pnameform_id
  json.url piece25_url(piece25, format: :json)
end
