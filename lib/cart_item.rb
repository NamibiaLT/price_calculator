require 'json'

class CartItem
  attr_reader :product_type, :details

  def initialize(product_type:, details:)
    @product_type = product_type
    @details = details
  end

  def match?(product_type)
    @product_type == product_type
  end

  def item_markup_for(options)
    @details.markup { |detail| detail.match?(options) }
  end

  def item_quantity_for(options)
    @details.quantity { |detail| detail.match?(options) }
  end
end