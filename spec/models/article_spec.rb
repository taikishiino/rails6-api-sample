require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'relation' do
    it { is_expected.to have_many(:tags) }
  end
end
