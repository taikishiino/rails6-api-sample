class Tag < ApplicationRecord
  has_many :blogs, through: :blog_tags
  has_many :blog_tags
  # tagを保存するのと同時にblog_tagsを更新できるように
  accepts_nested_attributes_for :blog_tags
end
