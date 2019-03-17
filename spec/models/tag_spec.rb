require 'rails_helper'

RSpec.describe Tag, type: :model do
  it 'Check that the factory we created is valid' do
    expect(build(:tag)).to be_valid
  end

  let(:attributes) do
    {
        name: 'A test title'
    }
  end
  let(:tag) { create(:tag, **attributes) }

  describe 'model validations' do
    it { expect(tag).to allow_value(attributes[:name]).for(:name) }
    it { expect(tag).to validate_presence_of(:name) }
    it { expect(tag).to validate_uniqueness_of(:name)}
  end

  describe 'relation' do
    it { is_expected.to have_many(:articles) }
  end
end