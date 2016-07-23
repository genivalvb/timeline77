class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :descricao
      t.references :registro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
