class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :rut
      t.string :nombre
      t.string :cargo
      t.string :n_inlges
      t.string :correo
      t.integer :telefono
      t.date :f_nacimiento
      t.string :nacionalidad
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
