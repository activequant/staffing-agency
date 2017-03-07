class AddDataToPropositions < ActiveRecord::Migration[5.0]
  def change
    add_column :propositions, :comment, :string
  end
end
