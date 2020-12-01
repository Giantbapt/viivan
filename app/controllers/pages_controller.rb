class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :galerie ]
  
  def home
  	    @suggestion = Suggestion.new
        @last_images = Galerie.last(3)
        @last_articles = Article.last(3)

  end

  def galerie

  		results = Cloudinary::Api.resources_by_tag("Viivan", max_results: 100)
  		jon = results.first[1]
  		@cloudinary_viivan_images = jon
  		
  end
  def dashboard
  	@suggestions = Suggestion.all
  	@articles = Article.all
  end
end