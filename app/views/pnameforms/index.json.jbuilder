json.array!(@pnameforms) do |pnameform|
  json.extract! pnameform, :id, :pname1, :pname2, :pname3, :pname4, :pname5, :pname6
  json.url pnameform_url(pnameform, format: :json)
end
