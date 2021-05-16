class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :titre
      t.string :url
      t.string :slug

      t.timestamps
    end
  end
end
