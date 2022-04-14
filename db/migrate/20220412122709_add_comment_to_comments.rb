class AddCommentToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comment, null: true
  end
end
