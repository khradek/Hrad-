json.array!(@piece16s) do |piece16|
  json.extract! piece16, :id, :name, :user_id, :pnameform_id
  json.url piece16_url(piece16, format: :json)
end
