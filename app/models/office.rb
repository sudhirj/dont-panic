class Office < ActiveRecord::Base
  has_many :administrators
  belongs_to :company
  belongs_to :city

  validates_presence_of :name, :address

  def display_address
    address.gsub /\n/, '<br/>'
  end
end
