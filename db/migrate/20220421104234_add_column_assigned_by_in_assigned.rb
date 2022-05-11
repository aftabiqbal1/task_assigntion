class AddColumnAssignedByInAssigned < ActiveRecord::Migration[7.0]
  def change
    add_column :assigneds, :assigned_by, :integer
  end
end
