module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
    field :like_count, Int, null: false, camelize: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false

    field :tags, [Types::TagType], null: false

    # method
    # field :blog_count, String, null: true, camelize: false, method: :blog_count
  end
end
