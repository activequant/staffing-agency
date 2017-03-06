class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :upsa_project
      t.text :description
      t.string :profile
      t.string :client_ref_id
      t.string :sales_level
      t.integer :priority
      t.date :fill_by
      t.binary :job_desv
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
