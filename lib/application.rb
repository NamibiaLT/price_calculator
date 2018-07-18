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

class Product
  attr_reader :product_type, :base_prices

  def initialize(product_type:, base_prices:)
    @product_type = product_type
    @base_prices = base_prices
  end

  def match?(product_type)
    @product_type == product_type
  end

  def base_price_for(options)
    @base_prices.find { |base_price| base_price.match?(options) }
  end
end

class BasePrice
  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    # TODO
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