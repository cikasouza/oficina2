class AddVeiculoToOrdemServicos < ActiveRecord::Migration
  def change
    change_table :ordem_servicos do |t|
      t.references :veiculo, foreign_key: true, index: true
    end
  end
end
