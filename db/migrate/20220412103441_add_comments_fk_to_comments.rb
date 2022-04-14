class AddCommentsFkToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comments, index: true
  end
end
