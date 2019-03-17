module Types
  class MutationType < Types::BaseObject
    #--------------------------
    # Article
    #--------------------------
    field :create_article, ArticleType, null: false, camelize: false, description: 'Create an article' do
      argument :title, String, required: true
      argument :text, String, required: true
      argument :like_count, Int, required: false
    end
    def create_article(title:, text:)
      Article.create!(title: title, text: text)
    end
    # 返り値: Boolean
    field :update_article, Boolean, null: false, camelize: false, description: 'Delete an article' do
      argument :id, ID, required: true
      argument :title, String, required: true
      argument :text, String, required: true
    end
    def update_article(id:, title:, text:)
      article = Article.find_by!(id: id)
      article.title = title
      article.text = text
      article.save!
    end
    field :delete_article, Boolean, null: false, camelize: false, description: 'Delete an article' do
      argument :id, ID, required: true
    end
    def delete_article(id:)
      Article.find_by!(id: id).destroy!
      true
    end
  end
end
