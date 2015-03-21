json.array!(@piece17s) do |piece17|
  json.extract! piece17, :id, :name, :user_id, :pnameform_id
  json.url piece17_url(piece17, format: :json)
end
