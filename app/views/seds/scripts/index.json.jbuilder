json.array!(@scripts) do |script|
  json.extract! script, :id, :name, :play1, :hash1, :down1, :distance1, :defense1, :sed_id, :situation1
  json.url script_url(script, format: :json)
end
