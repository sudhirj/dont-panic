class City < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
  belongs_to :country

end
