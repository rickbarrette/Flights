class CreateEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :engines do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.integer :number
      t.float :tt
      t.float :start
      t.date :date
      t.integer :oil_change_interval
      t.integer :tbo
      t.string :make
      t.string :model
      t.string :serial

      t.timestamps
    end
  end
end
