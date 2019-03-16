class Tag < ApplicationRecord
  has_many :article_tags, dependent: :destroy
  has_many :articles, through: :article_tags

  validates :name , presence: true , length: { maximum: 20}
  # tagを保存するのと同時にblog_tagsを更新できるように
  accepts_nested_attributes_for :article_tags
end
