class AddStatusToAssigned < ActiveRecord::Migration[7.0]
  def change
    add_column :assigneds, :status, :string, default: "todo"
  end
end
