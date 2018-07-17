require 'json'

class Application
  def initialize(cart_file, base_price_file)
    @cart_file = cart_file
    @base_price_file = base_price_file
  end

  def cli
    STDOUT.puts 'Product: hoodie, Colour: white, dark, Size: small, Price: $38.00'
  end
end

class ProductParser
  def initialize(filename)
    @filename = filename
  end

  def parse
    JSON.parse(File.read(@filename))
      .group_by {|h| h['product-type'] }
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