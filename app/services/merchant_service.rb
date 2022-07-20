class MerchantService < BaseService
  def self.get_all_merchants
    response = conn.get('merchants')
    data = get_json(response)
    data[:data]
  end

  def self.get_merchant(id)
    response = conn.get("merchants/#{id}")
    data = get_json(response)
    data[:data]
  end

  def self.get_merchants_items(id)
    response = conn.get("merchants/#{id}/items")
    data = get_json(response)
    data[:data]
  end
end
