class HomeController < ApplicationController
  def data
    @countries = Country.all
    @cities = City.all
    @places = Place.all
    @administrators = Administrator.all
  end
end
