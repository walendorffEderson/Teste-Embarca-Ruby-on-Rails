class CreateEstados < ActiveRecord::Migration[7.1]
  def change
    create_table :estados do |t|

      t.timestamps
    end
  end
end
