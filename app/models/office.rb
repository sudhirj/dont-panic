class Office < ActiveRecord::Base
  has_many :admins
  belongs_to :company
  belongs_to :city

  validates_presence_of :name, :address
end
