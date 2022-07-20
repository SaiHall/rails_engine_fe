class MerchantFacade

  def self.create_all_merchants
    json = MerchantService.get_all_merchants
    json.map { |data| MerchantResult.new(data) }
  end
end
