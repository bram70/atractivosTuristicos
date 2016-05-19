json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :name, :categ_id
  json.url tipo_url(tipo, format: :json)
end
