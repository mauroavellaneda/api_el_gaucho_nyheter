class ArticlesIndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :lead, :category, :image

  def image
    return nil unless object.image.attached?
    if Rails.env.test?
      rails_blob_url(object.image)
    else
      return object.image.service_url
    end
  end
end
