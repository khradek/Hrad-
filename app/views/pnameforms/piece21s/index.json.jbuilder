json.array!(@piece21s) do |piece21|
  json.extract! piece21, :id, :name, :user_id, :pnameform_id
  json.url piece21_url(piece21, format: :json)
end
