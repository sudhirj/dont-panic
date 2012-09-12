class DataController < ApplicationController
  def index
    @countries = Country.all
    @cities = City.all
    @companies = Company.all
    @offices = Office.all
    @places = Place.all
    @administrators = Administrator.all
  end
end