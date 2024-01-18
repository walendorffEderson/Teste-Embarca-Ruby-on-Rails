class AddNomeToEstados < ActiveRecord::Migration[7.1]
  def change
    add_column :estados, :nome, :string
  end
end
