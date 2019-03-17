require 'rails_helper'

RSpec.describe ArticleTag, type: :model do
  it 'Check that the factory we created is valid' do
    expect(build(:tag)).to be_valid
  end

  let(:article1) { create(:article) }
  let(:tag1) { create(:tag) }
  let(:article_tag) { create(:article_tag, **attributes) }
  let(:attributes) do
    {
        article_id: article1.id,
        tag_id: tag1.id
    }
  end

  describe 'model validations' do
    it { expect(article_tag).to allow_value(attributes[:article_id]).for(:article_id) }
    it { expect(article_tag).to validate_presence_of(:article_id) }
  end

  describe 'relation' do
    it { is_expected.to belong_to(:article) }
    it { is_expected.to belong_to(:tag) }
  end
end
