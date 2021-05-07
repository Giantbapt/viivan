class GaleriesController < ApplicationController
	skip_before_action :authenticate_user!
	def index
    if params[:galeries].present?
      @galeries = Galerie.search_by_tags(params[:galeries])
    else
		  @galeries = Galerie.all
    end
	end

	def show
		@galerie = Galerie.find(params[:id])
	end


  private

  def galerie_params
  	params.require(:galerie).permit(:id, :nom, :metadescription, :metatitre, :url)
  end
end
