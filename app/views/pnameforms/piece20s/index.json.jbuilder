json.array!(@piece20s) do |piece20|
  json.extract! piece20, :id, :name, :user_id, :pnameform_id
  json.url piece20_url(piece20, format: :json)
end
