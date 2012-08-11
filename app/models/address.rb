class Address < ActiveRecord::Base
  validates_presence_of :address_line_1
end
