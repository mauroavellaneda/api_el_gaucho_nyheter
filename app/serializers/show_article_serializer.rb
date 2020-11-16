class ShowArticleSerializer < ActiveModel::Serializer
  include ActionView::Helpers::TextHelper
  attributes :id, :title, :lead, :content, :image, :category, :premium

  def content
    unless object.premium
      object.content
    else
      truncate(object.content, length: 50)
    end
  end

  def image
    return nil unless object.image.attached?
    if Rails.env.test?
      rails_blob_url(object.image)
    else
      return object.image.service_url
    end
  end
end
