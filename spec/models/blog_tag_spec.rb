require 'rails_helper'

RSpec.describe BlogTag, type: :model do
  describe 'relation' do
    it { is_expected.to belong_to(:blog) }
    it { is_expected.to belong_to(:tag) }
  end
end
