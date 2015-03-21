json.array!(@piece12s) do |piece12|
  json.extract! piece12, :id, :name, :user_id, :pnameform_id
  json.url piece12_url(piece12, format: :json)
end
