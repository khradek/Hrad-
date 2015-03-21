json.array!(@piece14s) do |piece14|
  json.extract! piece14, :id, :name, :user_id, :pnameform_id
  json.url piece14_url(piece14, format: :json)
end
