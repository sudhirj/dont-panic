class Contact < ActiveRecord::Base
  attr_accessible :name, :phone_number, :email

  validates_presence_of  :email
end
