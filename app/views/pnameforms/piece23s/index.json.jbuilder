json.array!(@piece23s) do |piece23|
  json.extract! piece23, :id, :name, :user_id, :pnameform_id
  json.url piece23_url(piece23, format: :json)
end
