require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'validations' do
    subject { build(:item) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:item_slug) }
    it { should validate_uniqueness_of(:item_slug) }
  end

  it { should belong_to(:category) }
end
