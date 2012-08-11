class City < ActiveRecord::Base

  validates_presence_of :name
  belongs_to :country
  has_many :hotspots
  has_many :offices
end
