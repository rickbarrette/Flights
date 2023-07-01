class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.float :tt
      t.date :date
      t.float :hobbs

      t.timestamps
    end
  end
end
