json.array!(@seds) do |sed|
  json.extract! sed, :id, :name, :user_id
  json.url sed_url(sed, format: :json)
end
