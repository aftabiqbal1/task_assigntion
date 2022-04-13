class RemoveTidFromAssigneds < ActiveRecord::Migration[7.0]
  def change
    remove_column :assigneds, :tid
  end
end
