class Contact < ActiveRecord::Base
  field :name, type: String
  field :phone_number, type: String
  field :email, type: String

  validates_presence_of :phone_number
end
