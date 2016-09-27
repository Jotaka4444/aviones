class CreatePersonalFlights < ActiveRecord::Migration
  def change
    create_table :personal_flights do |t|
      t.references :personal, index: true, foreign_key: true
      t.references :flight, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
