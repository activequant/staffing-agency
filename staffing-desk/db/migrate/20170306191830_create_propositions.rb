class CreatePropositions < ActiveRecord::Migration[5.0]
  def change
    create_table :propositions do |t|
      t.references :position, foreign_key: true
      t.references :resource, foreign_key: true
      t.date :proposal_date
      t.references :proposalStatus, foreign_key: true

      t.timestamps
    end
  end
end
