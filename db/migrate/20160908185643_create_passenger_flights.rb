class CreatePassengerFlights < ActiveRecord::Migration
  def change
    create_table :passenger_flights do |t|
      t.string :clase
      t.string :asiento
      t.references :passenger, index: true, foreign_key: true
      t.references :flight, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
