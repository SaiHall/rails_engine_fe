require 'rails_helper'

RSpec.describe MerchantItem do
  it 'exists with attributes' do

    item = MerchantItem.new(
      {
      "id": "2437",
      "type": "item",
      "attributes": {
          "name": "Item Consequatur Quia",
          "description": "Sit dolorem vel facere. Nihil quasi exercitationem dolorem inventore. Ut omnis vero blanditiis facilis velit. Et natus nemo quibusdam facere inventore molestiae illum.",
          "unit_price": 532.47,
          "merchant_id": 99
          }
      })

    expect(item).to be_an_instance_of(MerchantItem)
    expect(item.name).to eq("Item Consequatur Quia")
  end
end
