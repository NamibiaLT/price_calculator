require './lib/cart_parser'
# require './lib/product_parser'
require './lib/cart_parser'
require 'json'
require 'pry'

class Application
  def initialize(cart_file, base_price_file)
    @cart_file = cart_file
    @base_price_file = base_price_file
  end

  def cli
    STDOUT.puts "Your cart total is: #{cart.cart_total} cents"
  end

  private

  def cart
    CartParser.new(@cart_file, base_prices).parse
  end

  def base_prices
    ProductParser.new(@base_price_file).parse
  end
end
