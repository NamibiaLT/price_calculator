require 'json'

class CartParser
  def initialize(cart_file)
    @cart_file = cart_file
  end

  def parse
    cart_items = JSON.parse(File.read(@cart_file))
      .map do |product_hash|
        CartItem.new(
          product_type: product_hash['product-type'],
          options: product_hash['options'],
          markup: product_hash['artist-markup'],
          quantity: product_hash['quantity']
        )
      end
    Cart.new(cart_items)
  end
end