json.array!(@cants) do |cant|
  json.extract! cant, :id, :name, :prov_id
  json.url cant_url(cant, format: :json)
end
