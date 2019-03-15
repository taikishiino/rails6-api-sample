class Article < ApplicationRecord
  has_many :tags, through: :article_tags
  has_many :article_tags

  def article_count
    Article.all.count
  end
end
