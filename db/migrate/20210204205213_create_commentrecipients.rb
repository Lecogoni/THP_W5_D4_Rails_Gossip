class CreateCommentrecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :commentrecipients do |t|
      t.belongs_to :comment, index: true 
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
