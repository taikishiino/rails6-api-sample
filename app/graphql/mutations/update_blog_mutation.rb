module Mutations
  class UpdateBlogMutation < GraphQL::Schema::RelayClassicMutation
    argument :id, ID, required: true
    argument :title, String, required: true
    argument :content, String, required: true

    field :blog, Types::BlogType, null: false

    def resolve(title:, content:, id:)
      blog = Blog.find_by(id: id)
      blog.title = title
      blog.content = content
      blog.save!
      { blog: blog }
    end
  end
end
