require 'rails_helper'

RSpec.describe KapiTechApiSchema do
  let(:context) { {} }
  let(:variables) { {} }
  let(:result) {
    res = KapiTechApiSchema.execute(
        query_string,
        context: context,
        variables: variables
    )
    if res['errors']
      pp res
    end
    res
  }

  describe 'article query' do
    describe 'articles' do
      before do
        FactoryBot.create_list(:article, 10)
      end
      let(:query_string) do
        %|
        query {
          articles {
            id
            title
          }
        }
      |
      end
      it 'return articles' do
        expect(result['data']['articles'].count).to eq (10)
      end
    end

    describe 'article' do
      let(:article) { create(:article) }
      let(:query_string) do
        %|
        query {
          article(id: #{article.id}) {
            id
            title
          }
        }
      |
      end
      it 'returns article' do
        expect(result['data']['article']['title']).to eq(article.title)
      end
    end
  end
end