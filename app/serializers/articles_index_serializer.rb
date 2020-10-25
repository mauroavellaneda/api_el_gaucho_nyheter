class ArticlesIndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :lead, :category, :image, :location

  def image
    return nil unless object.image.attached?

    if Rails.env.test?
      rails_blob_url(object.image)
    else
      object.image.service_url
    end
  end
end
