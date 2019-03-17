module Types
  class ArticleTagType < Types::BaseObject
    field :id, ID, null: false
    field :article, Types::ArticleType, '記事', null: false
    field :tag, Types::TagType, 'タグ', null: false
  end
end
