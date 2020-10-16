class ShowArticleSerializer < ActiveModel::Serializer
  include ActionView::Helpers::TextHelper
  attributes :id, :title, :lead, :content

  def content
    unless object.premium
      object.content
    else
      truncate(object.content, length: 50)
    end
  end
end
