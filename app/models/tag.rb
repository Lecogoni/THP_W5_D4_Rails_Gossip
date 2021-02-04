class Tag < ApplicationRecord
  has_many :taggossips
  has_many :gossips, through: :taggossips
end
