class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :roomNumber
      t.string :size
      t.string :status
      t.string :building
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
