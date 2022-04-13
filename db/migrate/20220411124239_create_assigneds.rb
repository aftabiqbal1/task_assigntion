class CreateAssigneds < ActiveRecord::Migration[7.0]
  def change
    create_table :assigneds do |t|
      t.integer :complete_status

      t.timestamps
    end
  end
end
