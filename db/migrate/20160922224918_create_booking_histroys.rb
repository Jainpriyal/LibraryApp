class CreateBookingHistroys < ActiveRecord::Migration
  def change
    create_table :booking_histroys do |t|
      t.time :from
      t.time :to
      t.date :date
      t.references :rooms

      t.timestamps null: false
    end
  end
end
