class AddTagsToGaleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galeries, :tags, :text, array: true
  end
end
