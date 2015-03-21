json.array!(@piece24s) do |piece24|
  json.extract! piece24, :id, :name, :user_id, :pnameform_id
  json.url piece24_url(piece24, format: :json)
end
