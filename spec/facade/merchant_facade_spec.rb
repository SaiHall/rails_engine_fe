require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'creates a MerchantResults poro from all merchants call' do
    all_merch = MerchantFacade.create_all_merchants

    expect(all_merch[0]).to be_an_instance_of(MerchantResult)
  end
end
