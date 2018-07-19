require 'json'

class ProductParser
  def initialize(filename)
    @filename = filename
  end

  def parse
    JSON.parse(File.read('./example-data/base_prices.json'))
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