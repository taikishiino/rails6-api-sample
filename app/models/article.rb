class Article < ApplicationRecord
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags

  validates :title, uniqueness: true, presence: true, length: { maximum: 30 }
  validates :text, uniqueness: true, presence: true

  def article_count
    Article.all.count
  end
end
