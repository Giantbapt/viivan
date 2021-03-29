class CreateOeufs < ActiveRecord::Migration[6.0]
  def change
    create_table :oeufs do |t|
      t.string :count

      t.timestamps
    end
  end
end
