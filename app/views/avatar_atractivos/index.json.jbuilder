json.array!(@avatar_atractivos) do |avatar_atractivo|
  json.extract! avatar_atractivo, :id, :atractivo_id, :avatar
  json.url avatar_atractivo_url(avatar_atractivo, format: :json)
end
