class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :full_name
      t.string :phone
      t.string :gender
      t.string :main_skill
      t.string :notice_period
      t.string :salary_expectation
      t.string :verbal_description

      t.timestamps
    end
  end
end
