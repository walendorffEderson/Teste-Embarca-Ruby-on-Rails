class AddEstadoIdToCidades < ActiveRecord::Migration[7.1]
  def change
    add_column :cidades, :estado_id, :integer
    add_index :cidades, :estado_id
  end
end
