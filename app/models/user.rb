class User < ApplicationRecord
  belongs_to :city
  has_many :gossips

  has_many :sent_messages, foreign_key: 'sender_id', class_name: "Privatemessage"
  
  has_many :messages, foreign_key: 'recipient_id', class_name: "Pmrecipient"
  has_many :received_messages, foreign_key: 'privatemessage_id', class_name: "Privatemessage", through: :pmrecipients
end

