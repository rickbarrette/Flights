class CreateTaches < ActiveRecord::Migration[7.0]
  def change
    create_table :taches do |t|
      t.references :engine, null: false, foreign_key: true
      t.float :start
      t.float :current
      t.date :date

      t.timestamps
    end
  end
end
