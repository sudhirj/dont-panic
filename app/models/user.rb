class User < ActiveRecord::Base

  field :name, type: String
  field :email, type: String
  field :phone, type: String

  validates_presence_of :email
end
