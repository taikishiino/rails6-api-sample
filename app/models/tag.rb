class Tag < ApplicationRecord
  has_many :articles, through: :article_tags
  has_many :article_tags

  # tagを保存するのと同時にblog_tagsを更新できるように
  accepts_nested_attributes_for :article_tags
end
