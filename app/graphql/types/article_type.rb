module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
    field :like_count, Int, null: false, camelize: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false

    field :tags, [Types::TagType], null: false
  end
end
