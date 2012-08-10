class City < ActiveRecord::Base
  field :name, type: String
  belongs_to :country
end
