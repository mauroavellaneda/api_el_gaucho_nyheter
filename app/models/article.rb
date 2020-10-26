class Article < ApplicationRecord
  validates_presence_of :title, :lead, :category, :content
  enum category: [:local, :sports, :politics]
  belongs_to :journalist, class_name: "User"
  has_one_attached :image
end
