class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.serial :serial
      t.string :name
      t.references :premise, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
