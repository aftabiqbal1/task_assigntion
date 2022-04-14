class RemoveUidFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :uid, :integer
  end
end
