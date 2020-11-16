class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  
  def home
  	    @suggestion = Suggestion.new

  end
  def dashboard
  	@suggestions = Suggestion.all
  	@articles = Article.all
  end
end
