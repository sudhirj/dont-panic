class Hotspot < ActiveRecord::Base
  AIRPORT = "airport"
  TRAIN_STATION = "train_station"
  ACCOMMODATION = "accommodation"
  HANGOUT = "hangout"
  ALL_TYPES = [AIRPORT,TRAIN_STATION,ACCOMMODATION,HANGOUT]

  field :name, type: String
  field :type ,type: String
  field :description, type: String
  field :reviews, type: String

  has_one :address
  has_many :contacts

  belongs_to :city

  validates_inclusion_of :type, :in => ALL_TYPES
end
