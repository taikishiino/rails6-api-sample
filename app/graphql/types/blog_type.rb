module Types
  class BlogType < Types::BaseObject
    description "An blog"

    field :id, ID, null: false
    field :title, String, null: false, camelize: false
    field :content, String, null: false, camelize: false
    field :tags, TagType, null: false
  end
end