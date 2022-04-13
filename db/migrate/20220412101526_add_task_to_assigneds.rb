class AddTaskToAssigneds < ActiveRecord::Migration[7.0]
  def change
    add_reference :assigneds, :task, index: true
  end
end
