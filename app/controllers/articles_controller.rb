class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @image_src = "articles/#{@article.id}/#{@article.img1}"
  end

  def index
    @articles = Article.all
  end

end
