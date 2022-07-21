require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'creates a MerchantResults poro array from all merchants call' do
    all_merch = MerchantFacade.create_all_merchants

    expect(all_merch[0]).to be_an_instance_of(MerchantResult)
    expect(all_merch).to be_an(Array)
  end

  it 'creates one merchant object from single merchant api call' do
    merchant = MerchantFacade.create_merchant(14)

    expect(merchant).to be_an_instance_of(MerchantResult)
    expect(merchant).to_not be_an(Array)
  end

  it 'creates an array of items from one merchant' do
    item = MerchantFacade.create_merchants_items(14)
    expect(item[0]).to be_an_instance_of(MerchantItem)
    expect(item).to be_an(Array)
  end
end
