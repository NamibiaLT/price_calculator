require 'cart_item'

class Cart 
  def initialize(cart_items)
    @cart_items = cart_items
  end

  def cart_total
    @cart_items.map(&:item_total).sum
  end
end