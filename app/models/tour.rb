class Tour < ActiveRecord::Base
  belongs_to :itinerary


   accepts_nested_attributes_for :itinerary
   validates :add_desc, :departure_date, presence: true
   validates :add_payment, presence: true
   validates :count_days, presence: true


  
end
