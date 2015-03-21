json.array!(@piece13s) do |piece13|
  json.extract! piece13, :id, :name, :user_id, :pnameform_id
  json.url piece13_url(piece13, format: :json)
end
