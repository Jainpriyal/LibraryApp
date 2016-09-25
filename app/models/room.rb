class Room < ActiveRecord::Base
  has_and_belongs_to_many :booking_histroys
  enum status: {:Available => "available", :Booked => "booked"}
  enum building: { :Hunt => "James B. Hunt", :Hill => "D.H. Hill"}
  enum size: {:small => "4", :medium => "6", :large => "8"}

  def self.search(search)
    if search
      where(["building LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
