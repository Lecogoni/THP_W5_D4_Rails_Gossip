class Gossip < ApplicationRecord
  belongs_to :user

  has_many :taggossips
  has_many :tags, through: :taggossips

  has_many :coms
end
