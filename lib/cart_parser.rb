require 'json'

class CartParser
  def initialize(cart_file)
    @cart_file = cart_file
  end

  def parse
    JSON.parse(File.read(@cart_file))
      .group_by {|hash| hash['product-type'] }
      .map do |product_type, product_hashes|
        CartItem.new(product_type: product_type, details: details(product_hashes))
      end
  end

  private

  def details(product_hashes)
    product_hashes.map do |product_hash|
      Cart.new(options: product_hash['options'], markup: product_hash['artist-markup'], quantity: product_hash['quantity'])
    end
  end
end