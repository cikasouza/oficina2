json.extract! ordem_servico, :id, :numero_os, :orcamento, :pedido, :data_inicio, :data_conclusao, :descricao, :valor, :created_at, :updated_at
json.url ordem_servico_url(ordem_servico, format: :json)