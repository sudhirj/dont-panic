class DataController < ApplicationController
  def index
    user = params[:username]
    pass = params[:password]
    admin_user = AdminUser.where(:email => user).first
    admin_user = nil unless admin_user.valid_password? pass
    @countries = Country.all
    @cities = City.all
    @companies = Company.where(:admin_user_id => admin_user.id) if admin_user.present?
    @offices = Office.where(:company_id => @companies.collect(&:id)) if @companies.present?
    @places = Place.all
    @administrators = Administrator.where(:office_id => @offices.collect(&:id)) if @offices.present?
    @place_types = PlaceType.all
  end
end
