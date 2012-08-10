class Address < ActiveRecord::Base
  field :address_line1, type: String
  field :address_line2, type: String
  field :city, type: String
  field :country, type: String
  field :latitude, type: BigDecimal
  field :longitude, type: BigDecimal
end
