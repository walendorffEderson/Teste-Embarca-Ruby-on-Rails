class CreateCidades < ActiveRecord::Migration[6.0]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.timestamps
    end
  end
end
