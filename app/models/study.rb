class Study < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :studies_tags
  # has_many :tags
  has_many :tags,through: :studies_tags
  accepts_nested_attributes_for :tags, allow_destroy: true

end
