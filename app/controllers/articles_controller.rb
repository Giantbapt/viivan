class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
    @article.save!
    redirect_to root_path, notice:"Nous avons bien reçu votre suggestion, merci pour votre aide !"
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
