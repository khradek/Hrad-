json.array!(@piece19s) do |piece19|
  json.extract! piece19, :id, :name, :user_id, :pnameform_id
  json.url piece19_url(piece19, format: :json)
end
