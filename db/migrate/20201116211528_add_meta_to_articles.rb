class AddMetaToArticles < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :slug, :string
  	add_column :articles, :meta_title, :string
  	add_column :articles, :meta_description, :string
  	add_column :articles, :meta_image, :string
  	add_column :articles, :active, :boolean, default: false
  end
end
