class CreateVors < ActiveRecord::Migration[7.0]
  def change
    create_table :vors do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.date :date
      t.string :location
      t.string :type
      t.integer :bearing_error_vor_1
      t.integer :bearing_error_for_2
      t.string :pilot

      t.timestamps
    end
  end
end
