class OfficesController < ApplicationController
  def index
    @offices = Office.all
  end
end
