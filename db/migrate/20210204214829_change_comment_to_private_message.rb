class ChangeCommentToPrivateMessage < ActiveRecord::Migration[6.0]
  def change
    rename_table :comments, :privatemessages
  end
end
