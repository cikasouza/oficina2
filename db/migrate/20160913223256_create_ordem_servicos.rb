class CreateOrdemServicos < ActiveRecord::Migration
  def change
    create_table :ordem_servicos do |t|
      t.string :numero_os
      t.boolean :orcamento
      t.boolean :pedido
      t.date :data_inicio
      t.date :data_conclusao
      t.text :descricao
      t.float :valor

      t.timestamps null: false
    end
  end
end
