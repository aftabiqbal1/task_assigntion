class AddUserToAssigneds < ActiveRecord::Migration[7.0]
  def change
    add_reference :assigneds, :user, index: true
  end
end
