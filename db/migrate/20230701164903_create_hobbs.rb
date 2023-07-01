class CreateHobbs < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbs do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.float :tt
      t.float :start
      t.date :date
      t.float :current

      t.timestamps
    end
  end
end
