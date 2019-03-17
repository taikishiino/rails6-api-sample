module Types
  class TagType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true

    field :article, Types::ArticleType, null: false
  end
end
