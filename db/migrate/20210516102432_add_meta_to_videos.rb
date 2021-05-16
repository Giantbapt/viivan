class AddMetaToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :meta_title, :string
    add_column :videos, :meta_description, :string
    add_column :videos, :meta_image, :string
    add_column :videos, :active, :boolean, default: false
  end
end
