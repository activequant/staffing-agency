class AddLocationToPositions < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :location, :string
  end
end
