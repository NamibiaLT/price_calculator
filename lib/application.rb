require 'json'

class Application
  def initialize(cart_file, base_price_file)
    @cart_file = cart_file
    @base_price_file = base_price_file
  end

  def cli
    cart_item.total.each do |item|
      STDOUT.puts "#{cart_item.product_type} total: #{cart.total} cents \n"
    end
  end
end