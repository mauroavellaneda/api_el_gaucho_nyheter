class Api::V1::ArticlesController < ApplicationController
  before_action :valid_category?, only: :index, if: :selected_category

  def index
    articles = if selected_category
        Article.where(category: params["category"])
      elsif selected_location? == true
        Article.where(location: current_location)
      else
        Article.all
      end

    render json: articles, each_serializer: ArticlesIndexSerializer
  end

  def show
    article = Article.find(params[:id])
    render json: article, serializer: ShowArticleSerializer
  rescue StandardError => e
    render json: { error: "Article does not exist" }, status: :not_found
  end

  def valid_category?
    unless Article.categories.keys.include?(params["category"])
      render json: { error: "Sorry, we don't have that category" }, status: :not_found
    end
  end

  def selected_category
    !params["category"].nil?
  end

  def selected_location?
    !params["local"].nil?
  end

  def current_location
    if params["local"] == "Sweden"
    else
      "Unites States of America"
    end
  end
end
