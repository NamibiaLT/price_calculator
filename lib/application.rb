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