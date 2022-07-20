require 'rails_helper'

RSpec.describe MerchantResult do
  it 'exists with attributes' do

    merchant = MerchantResult.new(
            {
            "id": "1",
            "type": "merchant",
            "attributes": {
                "name": "Schroeder-Jerde"
                    }
            })

    expect(merchant).to be_an_instance_of(MerchantResult)
    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq('1')
  end
end
