class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :booking_histroys, :date, :date
  end
end
