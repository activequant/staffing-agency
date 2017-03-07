class CreatePropositionUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :proposition_updates do |t|
      t.datetime :timestamp
      t.string :comment
      t.references :proposalStatus, foreign_key: true

      t.timestamps
    end
  end
end
