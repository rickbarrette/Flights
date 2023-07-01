class CreateAnnuals < ActiveRecord::Migration[7.0]
  def change
    create_table :annuals do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.float :tt
      t.date :date

      t.timestamps
    end
  end
end
