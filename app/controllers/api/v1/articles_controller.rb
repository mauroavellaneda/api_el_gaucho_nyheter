class Api::V1::ArticlesController < ApplicationController
  def index
    articles = if params[:location]
                 Article.where(category: :local).where(location: params[:location])

               elsif params[:category]
                 Article.where(category: params[:category])

               else
                 Article.all
               end
    render json: articles, each_serializer: ArticlesIndexSerializer
  rescue StandardError
    render json: { error: "Sorry, we don't have that category" }, status: :not_found
  end

  def show
    article = Article.find(params[:id])
    render json: article, serializer: ShowArticleSerializer
  rescue StandardError => e
    render json: { error: 'Article does not exist' }, status: :not_found
  end
end
