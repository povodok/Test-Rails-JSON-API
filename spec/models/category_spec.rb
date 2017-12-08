require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    subject { build(:category) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category_slug) }
    it { should validate_uniqueness_of(:category_slug) }
  end
end
