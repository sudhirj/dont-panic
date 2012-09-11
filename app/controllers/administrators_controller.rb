class AdministratorsController < ApplicationController
  def index
    @administrators = Administrator.all
  end

end
