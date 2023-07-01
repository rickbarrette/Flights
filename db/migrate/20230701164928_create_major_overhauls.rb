class CreateMajorOverhauls < ActiveRecord::Migration[7.0]
  def change
    create_table :major_overhauls do |t|
      t.references :engine, null: false, foreign_key: true
      t.float :tach
      t.date :date

      t.timestamps
    end
  end
end
