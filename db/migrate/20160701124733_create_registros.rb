class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.integer :ano

      t.index :ano, unique: true

      t.timestamps null: false
    end
  end
end
