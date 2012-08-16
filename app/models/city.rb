class City < ActiveRecord::Base
  belongs_to :country
  has_many :places
  has_many :offices

  validates_presence_of :name
end
