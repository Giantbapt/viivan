class ArticlesController < ApplicationController
  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
    @article.save!
    redirect_to root_path
  end

  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  	
  end


  private

  def article_params
  	params.require(:article).permit(:id, :title, :text, :address, :author, :numbers_of_characters, :photo, :date)
  end
end
