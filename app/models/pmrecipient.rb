class Pmrecipient < ApplicationRecord
  belongs_to :privatemessage
  belongs_to :recipient, class_name: "User"
end
