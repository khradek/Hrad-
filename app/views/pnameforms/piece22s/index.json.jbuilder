json.array!(@piece22s) do |piece22|
  json.extract! piece22, :id, :name, :user_id, :pnameform_id
  json.url piece22_url(piece22, format: :json)
end
