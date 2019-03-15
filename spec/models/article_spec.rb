require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'relation' do
    it { is_expected.to have_many(:tags) }
  end

=begin
  describe "hogehoge" do
    context "ArticleのFactoryを作成した場合" do
      it "テストデータが作成される" do
        article_model = FactoryGirl.create(:article)

        p article_model
      end
    end
  end
=end
end
