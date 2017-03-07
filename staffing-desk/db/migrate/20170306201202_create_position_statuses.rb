class CreatePositionStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :position_statuses do |t|
      t.string :value

      t.timestamps
    end
  end
end
