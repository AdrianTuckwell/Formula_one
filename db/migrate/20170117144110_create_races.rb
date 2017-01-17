class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.datetime :date
      t.references :driver, index: true, foreign_key: true
      t.references :track, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
