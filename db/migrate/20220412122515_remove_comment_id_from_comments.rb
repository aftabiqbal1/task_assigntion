class RemoveCommentIdFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :comments_id, :string
  end
end
