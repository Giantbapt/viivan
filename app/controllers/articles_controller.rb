class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
    @article.save!
    redirect_to articles_path, notice:"Nouvel Article ajouté, bien ouej!"
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
  	@article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def index
    @articles = Article.all.reverse()
  end

  def show
    @article = Article.find(params[:id])

  end


  private

  def article_params
  	params.require(:article).permit(:id, :title, :text, :address, :author, :numbers_of_characters, :photo, :date, :slug, :meta_title, :meta_image, :meta_description)
  end
end
