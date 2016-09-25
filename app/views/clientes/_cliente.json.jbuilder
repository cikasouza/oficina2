json.extract! cliente, :id, :nome, :cpf, :rg, :telefone, :endereco, :sexo, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)