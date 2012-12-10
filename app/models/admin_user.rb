class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :companies

  def office_admins
    ::Administrator.joins(:office).joins('join companies on companies.id = offices.company_id').joins('join admin_users on companies.admin_user_id = admin_users.id').where('admin_users.id = ?',self.id).select('administrators.*')
  end

  def offices
    ::Office.joins(:company).joins('join admin_users on companies.admin_user_id = admin_users.id').where('admin_users.id = ?',self.id).select('offices.*')
  end

end
