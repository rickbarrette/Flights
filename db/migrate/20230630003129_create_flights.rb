class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :to
      t.string :from
      t.integer :oil
      t.float :fuel
      t.float :hobbs
      t.float :tach
      t.date :date
      t.string :note

      t.timestamps
    end
  end
end
