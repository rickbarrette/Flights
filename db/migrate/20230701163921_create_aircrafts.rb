class CreateAircrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :aircrafts do |t|
      t.string :tail
      t.string :make
      t.string :model
      t.integer :year
      t.string :serial
      t.float :tt

      t.timestamps
    end
  end
end
