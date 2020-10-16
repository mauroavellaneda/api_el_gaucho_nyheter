class Api::V1::ArticlesController < ApplicationController
  def index
    if params[:category]
      articles = Article.where(category: params[:category])
    else
      articles = Article.all
    end
    render json: articles, each_serializer: ArticlesIndexSerializer
  rescue
    render json: { error: "Sorry, we don't have that category" }, status: :not_found
  end

  def show
    begin
      article = Article.find(params[:id])
      render json: article, serializer: ShowArticleSerializer
    rescue => error
      render json: { error: "Article does not exist" }, status: :not_found
    end
  end
end
