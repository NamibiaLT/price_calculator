require 'json'

class CartParser
  def initialize(cart_file)
    @cart_file = cart_file
  end

  def parse
    binding.pry
    JSON.parse(File.read(@cart_file))
      .group_by {|hash| hash['product-type'] }
      .map do |product_type, product_hash|
        CartItems.new(product_type: product_type, options: product_hash['options'], markup: product_hash['artist-markup'], quantity: product_hash['quantity'])
      end
  end

  private

  # def details(product_hashes)
  #   binding.pry
  #   product_hashes.map { |product_hash| options: product_hash['options'], markup: product_hash['artist-markup'], quantity: product_hash['quantity'] }
  # end
end