class RemoveRepliedCmntIdFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :replied_comment_id, :integer
  end
end
