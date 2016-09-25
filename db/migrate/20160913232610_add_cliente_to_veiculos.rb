class AddClienteToVeiculos < ActiveRecord::Migration
  def change
    change_table :veiculos do |t|
      t.references :cliente, foreign_key: true, index: true
    end
  end
end
