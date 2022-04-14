class RemoveTidFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :tid, :integer
  end
end
