module Types
  class QueryType < Types::BaseObject

    field :test_field, String, null: false,
      description: "An example field added by the generator", camelize: false
    def test_field
      "Hello!!!!!!!!"
    end

    # 引数のIDをそのまま返すAPI
    field :blog_field, ID, null: false,
          # camelize: false で全てスネークケースでリクエストが送れるようになる
          description: '店舗をidで検索', camelize: false do
      # 特定のIDのデータだけ取得したい場合は、argumentで引数を定義する
      argument :id, ID, required: true
    end
    def blog_field(id:)
      "BlogID: #{id} を取得！"
    end
  end
end
