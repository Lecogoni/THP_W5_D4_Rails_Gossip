class Commentrecipient < ApplicationRecord
  belongs_to :comment
  belongs_to :recipient, class_name: "User"
end
