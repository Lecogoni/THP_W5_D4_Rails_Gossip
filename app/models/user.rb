class User < ApplicationRecord
  belongs_to :city
  has_many :gossips

  has_many :sent_messages, foreign_key: 'sender_id', class_name: "Comment"
  
  has_many :messages, foreign_key: 'recipient_id', class_name: "Commentrecipient"
  has_many :received_messages, foreign_key: 'comment_id', class_name: "Comment", through: :commentrecipients
end

