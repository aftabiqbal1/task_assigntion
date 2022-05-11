class RemoveColumnCompleteStatusFromAssigned < ActiveRecord::Migration[7.0]
  def change
    remove_column :assigneds, :complete_status
  end
end
