class DataController < ApplicationController
  def index
    @countries = Country.all
    @cities = City.all
    @companies = Company.all
    @offices = Office.all
    @places = Place.all
    @administrators = Administrator.all
    @place_types = PlaceType.all
  end
end