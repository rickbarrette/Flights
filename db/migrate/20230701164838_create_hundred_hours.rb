class CreateHundredHours < ActiveRecord::Migration[7.0]
  def change
    create_table :hundred_hours do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.float :tt
      t.date :date

      t.timestamps
    end
  end
end
