class HomeController < ApplicationController
  def tree
    admin_user = params[:username].present? ? AdminUser.find_by_email(params[:username]) : current_admin_user
    admin_user = nil if params[:username].present? && admin_user.present? && !admin_user.valid_password?(params[:password])
    @countries = Country.order(:name).all
    @companies = Company.where(:admin_user_id => admin_user.id).collect {|company| company.offices.collect(&:city).map { |city| {city.id => {company => company.offices.where(:city_id => city.id)}}} } if admin_user.present?
    @companies = @companies.first.inject { | a, h | a.merge h } if @companies.present?
  end
end
