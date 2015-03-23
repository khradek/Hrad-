json.array!(@plays) do |play|
  json.extract! play, :id, :piece1, :sed_id
  json.url play_url(play, format: :json)
end
