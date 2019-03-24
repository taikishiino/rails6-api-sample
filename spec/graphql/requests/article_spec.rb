RSpec.describe Types::ArticleType do
  # スキーマ要素のテスト
  context 'article type' do
    subject { described_class.fields.keys }
    it { is_expected.to eq(["id", "title", "text", "like_count", "created_at", "updated_at", "tags"])}
  end

  # エラーケースのテスト
  #
  #
  #
  #
  #
  #
  #
end