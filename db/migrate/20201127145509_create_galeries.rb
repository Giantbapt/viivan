class CreateGaleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galeries do |t|
      t.string :nom
      t.string :metadescription
      t.string :metatitre
      t.string :url

      t.timestamps
    end
  end
end
