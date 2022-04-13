class RemoveUidFromAssigneds < ActiveRecord::Migration[7.0]
  def change
    remove_column :assigneds, :uid, :integer
  end
end
