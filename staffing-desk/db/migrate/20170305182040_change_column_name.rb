class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
      rename_column :positions, :job_desv, :job_desc
  end
end
