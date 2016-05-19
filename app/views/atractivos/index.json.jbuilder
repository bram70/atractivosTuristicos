json.array!(@atractivos) do |atractivo|
  json.extract! atractivo, :id, :name, :description, :parr_id, :cant_id, :prov_id, :subtipo_id, :tipo_id, :categ_id
  json.url atractivo_url(atractivo, format: :json)
end
