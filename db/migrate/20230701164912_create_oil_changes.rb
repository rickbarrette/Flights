class CreateOilChanges < ActiveRecord::Migration[7.0]
  def change
    create_table :oil_changes do |t|
      t.references :engine, null: false, foreign_key: true
      t.float :tach
      t.date :date
      t.integer :amount
      t.integer :added

      t.timestamps
    end
  end
end
