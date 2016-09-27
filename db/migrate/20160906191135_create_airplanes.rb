class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :matricula
      t.string :fabricante
      t.string :modelo
      t.integer :capacidad
      t.integer :autonomia
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
