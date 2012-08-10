class Office < ActiveRecord::Base
  attr_accessible :name, :address

  validates_presence_of :name , :address

  has_many :admins
  belongs_to :company
  belongs_to :city

end
