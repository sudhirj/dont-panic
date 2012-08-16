class Administrator < ActiveRecord::Base
  belongs_to :office
  validates_presence_of :name, :contact_details
end
