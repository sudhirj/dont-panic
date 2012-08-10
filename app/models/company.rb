class Company < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
  has_many :offices
end
