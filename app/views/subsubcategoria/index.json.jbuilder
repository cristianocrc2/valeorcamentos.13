json.array!(@subsubcategoria) do |subsubcategorium|
  json.extract! subsubcategorium, :id, :frequencia, :ativo, :subcategoria_id
  json.url subsubcategorium_url(subsubcategorium, format: :json)
end
