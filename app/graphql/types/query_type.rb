module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false, camelize: false,
      description: "An example field added by the generator"
    def test_field
      "現在時刻は#{context[:time]}です！"
    end

    #------------------------------------
    #  Article
    #------------------------------------
    field :articles, [Types::ArticleType], null: false, description: 'returns all articles'
    def articles
      Article.all
    end

    field :article, Types::ArticleType, null: false, description: 'returns a article' do
      argument :id, ID, required: true
    end
    def article(id:)
      Article.find_by(id: id)
    end
  end
end
