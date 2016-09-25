class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :roomNumber
      t.string :size
      t.string :status
      t.string :building

      t.timestamps null: false
    end
  end
end
