class MerchantFacade

  def self.create_all_merchants
    json = MerchantService.get_all_merchants
    json.map { |data| MerchantResult.new(data) }
  end

  def self.create_merchant(id)
    json = MerchantService.get_merchant(id)
    MerchantResult.new(json)
  end
end
