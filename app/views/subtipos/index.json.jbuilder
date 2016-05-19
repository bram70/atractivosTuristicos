json.array!(@subtipos) do |subtipo|
  json.extract! subtipo, :id, :name, :tipo_id
  json.url subtipo_url(subtipo, format: :json)
end
