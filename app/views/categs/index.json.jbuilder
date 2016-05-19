json.array!(@categs) do |categ|
  json.extract! categ, :id, :name
  json.url categ_url(categ, format: :json)
end
