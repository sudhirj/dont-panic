class HomeController < ApplicationController
  def tree
    @countries = Country.order(:name).all
  end
end
