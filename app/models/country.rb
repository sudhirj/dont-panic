class Country < ActiveRecord::Base
  field :name, type: String
  has_many :cities
end
