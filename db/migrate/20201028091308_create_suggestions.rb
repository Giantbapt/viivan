class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.string :name_owner
      t.string :email_owner
      t.string :name_contact
      t.string :address
      t.string :code_postal
      t.string :ville
      t.string :phone_number
      t.string :email
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
