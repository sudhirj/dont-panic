class Hotspot < ActiveRecord::Base

  TYPES = {:airport => "Airport", :train_station => "Train Station", :accomodation => "Accomodation", :hangout => "Hangout"}

  belongs_to :address
  belongs_to :location
  belongs_to :contact
  belongs_to :city

  validates_inclusion_of :type, :in => TYPES.values
end
