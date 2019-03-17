require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'Check that the factory we created is valid' do
    expect(build(:article)).to be_valid
  end

  let(:attributes) do
    {
        title: 'A test title',
        like_count: 100
    }
  end
  let(:article) { create(:article, **attributes) }

  describe 'model validations' do
    it { expect(article).to allow_value(attributes[:title]).for(:title) }
    it { expect(article).to allow_value(attributes[:like_count]).for(:like_count) }
    it { expect(article).to validate_presence_of(:title) }
    it { expect(article).to validate_uniqueness_of(:title)}
  end

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
