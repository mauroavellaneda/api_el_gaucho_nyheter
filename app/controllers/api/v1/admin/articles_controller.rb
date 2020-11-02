class Api::V1::Admin::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_journalist?

  def create
    article = current_user.articles.create(article_params)
    
    if article.persisted? && attach_image(article)
      render json: { message: "Article successfully created" }

    elsif !attach_image(article)
      render json: { message: "You need to have an image for the article"}, status: 422

    else
      error_message(article.errors)
    end
  end

  private

  def attach_image(article)
    params_image = params[:article][:image]
    if params_image.present?
      DecodeService.attach_image(params_image, article.image) 
    end
  end

  def article_params
    params.require(:article).permit(:title, :lead, :content, :category, :premium, :location)
  end

  def user_journalist?
    unless current_user.role == "journalist"
      unauthorized
    end
  end

  def unauthorized
    render json: { message: "You don't have permission to perform this action" }, status: 401
  end
end
