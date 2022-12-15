json.extract! faturamento, :id, :nome, :descricao, :valor, :created_at, :updated_at
json.url faturamento_url(faturamento, format: :json)
