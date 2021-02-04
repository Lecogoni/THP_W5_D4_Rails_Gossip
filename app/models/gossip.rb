class Gossip < ApplicationRecord
  belongs_to :user

  has_many :taggossips
  has_many :tags, through: :taggossips
end
