class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :origen
      t.string :destino
      t.date :fecha
      t.references :airplane, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
