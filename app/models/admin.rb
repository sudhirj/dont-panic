class Admin < ActiveRecord::Base
  has_one :user
  belongs_to :office
end
