json.array!(@parrs) do |parr|
  json.extract! parr, :id, :name, :cant_id
  json.url parr_url(parr, format: :json)
end
