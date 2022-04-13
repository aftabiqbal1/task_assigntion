class AddTaskIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :task
  end
end
