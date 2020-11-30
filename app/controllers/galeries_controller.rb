class GaleriesController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		@galeries = Galerie.all
	end

	def show
		@galerie = Galerie.find(params[:id])
	end


  private

  def galerie_params
  	params.require(:galerie).permit(:id, :nom, :metadescription, :metatitre, :url)
  end
end
