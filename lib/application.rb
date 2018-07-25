require 'cart_parser'
require 'product_parser'
require 'json'

class Application
  def initialize(cart_file, base_price_file)
    @cart_file = cart_file
    @base_price_file = base_price_file
  end

  def cli
    STDOUT.puts "Your cart total is: #{parsed_cart.cart_total} cents"
  end

  private

  def parsed_cart
    CartParser.new(@cart_file).parse
  end
end
