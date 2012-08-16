class Place < ActiveRecord::Base
  belongs_to :city
  belongs_to :place_type

  validates_presence_of :name
end
