class AddPremiumToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :premium, :boolean, default: false
  end
end
