class Admin < ActiveRecord::Base
  belongs_to :office
  belongs_to :contact
end
