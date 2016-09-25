class AddFotoToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :foto, :string
  end
end
