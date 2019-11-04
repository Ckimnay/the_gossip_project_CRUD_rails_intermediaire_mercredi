class ProfilsController < ApplicationController

  def show
    @profils = User.find(params[:id])
  end

end
