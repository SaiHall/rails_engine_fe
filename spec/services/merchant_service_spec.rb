require 'rails_helper'

RSpec.describe MerchantService do
  describe 'All Merchants endpoint' do
    it 'can retrieve data from all merchant endpoint' do
      json = MerchantService.get_all_merchants

      expect(json).to be_an(Array)
      expect(json[0][:attributes]).to have_key(:name)
    end
  end
end
