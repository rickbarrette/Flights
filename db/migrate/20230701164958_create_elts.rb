class CreateElts < ActiveRecord::Migration[7.0]
  def change
    create_table :elts do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.float :tt
      t.date :date
      t.date :inspected
      t.float :inspected_tach
      t.string :serial

      t.timestamps
    end
  end
end
