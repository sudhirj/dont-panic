class Office < ActiveRecord::Base
  has_many :admins
  belongs_to :company
end
