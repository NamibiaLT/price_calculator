require 'cart_item'

class Cart 
  def initialize(cart_items)
    @cart_items = cart_items
  end

  def cart_total
    @cart_items.map(&:item_total).sum
  end

  private

  def cart_item_price
    CartItem.new(product_type, options, markup, quantity).item_total(markup, quantity)
  end

  def parsed_cart_file(cart_file)
    CartParser.new(@cart_file).parse
  end
end