json.array!(@piece15s) do |piece15|
  json.extract! piece15, :id, :name, :user_id, :pnameform_id
  json.url piece15_url(piece15, format: :json)
end
