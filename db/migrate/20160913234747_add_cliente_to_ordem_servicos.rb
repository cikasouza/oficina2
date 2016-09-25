class AddClienteToOrdemServicos < ActiveRecord::Migration
  def change
    change_table :ordem_servicos do |t|
      t.references :cliente, foreign_key: true, index: true
    end
  end
end
