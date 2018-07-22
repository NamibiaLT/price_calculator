require 'json'

class CartParser
  def initialize(cart_file)
    @cart_file = cart_file
  end

  def parse
    JSON.parse(File.read(@cart_file))
      binding.pry
      .group_by {|hash| hash['product-type'] }
      .map do |product_type, product_hashes|
        CartItems.new(product_type: product_type, details: details(product_hashes))
      end
  end

  private

  def details(product_hashes)
    product_hashes.map 
    { |product_hash| options: product_hash['options'], markup: product_hash['artist-markup'], quantity: product_hash['quantity'] }
  end
end