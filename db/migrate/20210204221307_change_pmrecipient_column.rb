class ChangePmrecipientColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :pmrecipients, :comment_id, :privatemessage_id
  end
end
