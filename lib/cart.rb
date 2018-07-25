require 'json'
require 'cart_items'
require 'pry'

class Cart 
  attr_reader :markup, :quantity 
  def initialize(cart_items)
    @cart_items = cart_items
  #   # @product_type = product_type
  #   # @options = options
  #   # @markup = markup
  #   # @quantity = quantity
  end

  def cart_total
    binding.pry
    one_item_price = cart_item_price.each.with_index do |item_price, i|
      next_item_price = item_price[i + 1]
      return 0 if next_item_price = nil
    end
    total = one_item_price + next_item_price
    total.to_i
  end

  private

  def cart_item_price
    CartItems.new(product_type, options, markup, quantity).item_total(markup, quantity)
  end

  def parsed_cart_file(cart_file)
    CartParser.new(@cart_file).parse
  end
end