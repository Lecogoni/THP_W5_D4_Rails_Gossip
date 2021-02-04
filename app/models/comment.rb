class Comment < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :commentrecipients
end
