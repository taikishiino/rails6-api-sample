class Blog < ApplicationRecord
  has_many :tags, through: :blog_tags
  has_many :blog_tags
end
