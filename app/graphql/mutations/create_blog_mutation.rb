module Mutations
  class CreateBlogMutation < GraphQL::Schema::RelayClassicMutation
    argument :title, String, required: true
    argument :content, String, required: true

    field :blog, Types::BlogType, null: false

    def resolve(title:, content:)
      blog = Blog.new(title: title, content: content)
      blog.save!
      { blog: blog }
    end
  end
end
