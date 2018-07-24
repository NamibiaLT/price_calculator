require 'json'
require 'cart_items'
require 'base_price'

class Cart
  attr_reader :options, :markup, :quantity
  
  def initialize(product_type:, options:, markup:, quantity:)
    @product_type = product_type
    @options = options
    @markup = markup
    @quantity = quantity
  end

  def cart_total
    
  end

  private



end