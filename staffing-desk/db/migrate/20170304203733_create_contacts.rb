class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :greeting
      t.string :email
      t.string :phone
      t.string :likes
      t.string :dislikes

      t.timestamps
    end
  end
end
