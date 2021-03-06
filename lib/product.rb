require 'json'
require 'pry'

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
    # @base_prices.find { |base_price| base_price.match?(options) }.price
    @base_prices.find do |base_price|
      # binding.pry
      base_price.match?(options)
    end.price
  end
end
