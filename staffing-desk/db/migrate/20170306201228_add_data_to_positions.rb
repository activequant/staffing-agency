class AddDataToPositions < ActiveRecord::Migration[5.0]
  def change
    add_reference :positions, :positionStatus, foreign_key: true
  end
end
