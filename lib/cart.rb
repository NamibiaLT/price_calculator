require 'json'
require 'cart_item'
require 'base_price'

class Cart
  attr_reader :options, :markup, :quantity
  
  def initialize(options:, markup:, quantity:)
    @options = options
    @markup = markup
    @quantity = quantity
  end

  def cart_item_to_product
    Product.new(@product_type, @base_prices).base_price_for(options).include?(Cart.new(@options, @markup, @quantity).options)
  end

  def total
    total = (BASEPRICE + (BASEPRICE * MARKUP)) * QUANTITY
  end

  private 

  # BASEPRICE = BasePrice.new()
  # MARKUP = (CartItem.new().item_markup_for(options))/100
  # QUANTITY = (CartItem.new().item_quantity_for(options))
end