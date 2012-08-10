class Company < ActiveRecord::Base
  field :name, type: String
  has_many :offices
end
