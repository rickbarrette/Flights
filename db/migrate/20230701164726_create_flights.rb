class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.date :date
      t.string :from
      t.string :to
      t.integer :oil
      t.float :fuel
      t.float :tach
      t.float :hobbs
      t.string :note

      t.timestamps
    end
  end
end
