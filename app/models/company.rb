class Company < ActiveRecord::Base
  has_many :offices
  belongs_to :admin_user
  validates_presence_of :name
end
