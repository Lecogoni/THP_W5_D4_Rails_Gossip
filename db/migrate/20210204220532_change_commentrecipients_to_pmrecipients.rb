class ChangeCommentrecipientsToPmrecipients < ActiveRecord::Migration[6.0]
  def change
    rename_table :commentrecipients, :pmrecipients
  end
end
