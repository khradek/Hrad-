json.array!(@piece18s) do |piece18|
  json.extract! piece18, :id, :name, :user_id, :pnameform_id
  json.url piece18_url(piece18, format: :json)
end
