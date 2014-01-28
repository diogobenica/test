json.array!(@computadors) do |computador|
  json.extract! computador, :id, :serial, :marca, :modelo, :cor, :placa
  json.url computador_url(computador, format: :json)
end
