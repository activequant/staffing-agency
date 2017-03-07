class AlterPropTable < ActiveRecord::Migration[5.0]
  def change
	drop_table :propositions
	
	create_table :propositions do |t|
      t.belongs_to :position, index: true
      t.references :resource, foreign_key: true
      t.date :proposal_date
      t.references :proposalStatus, foreign_key: true
	  
      t.timestamps
    end
	
  end
end
