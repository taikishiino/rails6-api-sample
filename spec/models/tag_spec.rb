require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'relation' do
    it { is_expected.to have_many(:articles) }
  end
end