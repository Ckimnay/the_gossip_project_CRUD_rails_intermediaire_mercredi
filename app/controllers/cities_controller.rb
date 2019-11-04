class CitiesController < ApplicationController
  def show
  end
  @cities = City.find(params[:id])
end
