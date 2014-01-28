json.array!(@testes) do |testis|
  json.extract! testis, :id, :nome, :pagina, :erro, :defeito
  json.url testis_url(testis, format: :json)
end
