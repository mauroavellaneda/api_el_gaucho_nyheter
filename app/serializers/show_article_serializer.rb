class ShowArticleSerializer < ActiveModel::Serializer
  include ActionView::Helpers::TextHelper
  attributes :id, :title, :lead, :content

  def content
    
  end
end
