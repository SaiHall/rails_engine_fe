require 'rails_helper'

RSpec.describe MerchantService do
  describe 'All Merchants endpoint' do
    it 'can retrieve data from all merchant endpoint' do
      json = MerchantService.get_all_merchants

      expect(json).to be_an(Array)
      expect(json[0][:attributes]).to have_key(:name)
    end
  end
  describe 'One merchant endpoint' do
    it 'can retrieve data from single merchant end point' do
      json = MerchantService.get_merchant(14)

      expect(json).to be_a(Hash)
      expect(json[:attributes]).to have_key(:name)
    end
  end
  describe 'Merchants items endpoint' do
    it 'can retrieve data about a single merchants items' do
      json = MerchantService.get_merchants_items(99)

      expect(json).to be_an(Array)
      expect(json[0][:attributes]).to have_key(:name)
    end
  end
end
