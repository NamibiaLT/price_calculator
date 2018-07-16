require 'json'

class Application
  def initialize(cart_file, base_price_file, reporter=STDOUT)
    @cart_file = cart_file
    @base_price_file = base_price_file
  end

  def cli
  end

  private

  def parsed_cart_file
    JSON.parse(File.read(@cart_file))
  end

  def parsed_base_price_file
    JSON.parse(File.read(@base_price_file))
  end
end