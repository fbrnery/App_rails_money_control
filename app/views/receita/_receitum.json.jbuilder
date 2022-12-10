json.extract! receitum, :id, :nome, :descricao, :valor, :created_at, :updated_at
json.url receitum_url(receitum, format: :json)
