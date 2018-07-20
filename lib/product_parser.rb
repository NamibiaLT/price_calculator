require 'json'

class ProductParser
  def initialize(base_price_file)
    @base_price_file = base_price_file
  end

  def parse
    JSON.parse(File.read(@base_price_file))
      .group_by {|hash| hash['product-type'] }
      .map do |product_type, product_hashes|
        Product.new(product_type: product_type, base_prices: base_prices(product_hashes))
      end
  end

  private

  def base_prices(product_hashes)
    product_hashes.map do |product_hash|
      BasePrice.new(price: product_hash['base-price'], options: product_hash['options'])
    end
  end
end