require 'json'

class CartItem
  attr_reader :product_type, :details
  
  def initialize(product_type:, details:)
    @product_type = product_type
    @details = details
  end
end