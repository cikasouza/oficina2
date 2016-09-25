class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :endereco
      t.string :sexo

      t.timestamps null: false
    end
  end
end
