class DataController < ApplicationController
  def index
    admin_user = params[:username].present? ? AdminUser.find_by_email(params[:username]) : current_admin_user
    admin_user = nil if params[:username].present? && admin_user.present? && !admin_user.valid_password?(params[:password])
    @countries = Country.all
    @cities = City.all
    @companies = Company.where(:admin_user_id => admin_user.id) if admin_user.present?
    @offices = Office.where(:company_id => @companies.collect(&:id)) if @companies.present?
    @places = Place.all
    @administrators = Administrator.where(:office_id => @offices.collect(&:id)) if @offices.present?
    @place_types = PlaceType.all
  end
end
