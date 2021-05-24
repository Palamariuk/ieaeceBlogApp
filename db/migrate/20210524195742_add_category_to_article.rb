class AddCategoryToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :category, :string, null: false, default: 'Other'
  end
end
