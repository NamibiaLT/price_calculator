require 'json'

class CartItem
  attr_reader :product_type, :options, :markup, :quantity, :base_prices

  def initialize(product_type:, options:, markup:, quantity:, base_prices:)
    @product_type = product_type
    @options = options
    @markup = markup
    @quantity = quantity
    @base_prices = base_prices
  end

  def price_lookup
    product = @base_prices.find { |product| product.match?(product_type) }
    product.base_price_for(options)
  end

  def item_total
    total = ((price_lookup + additional_markup) * @quantity)
    total.to_i
  end

  private

  def additional_markup
    price_lookup * artist_markup_in_cents
  end

  def artist_markup_in_cents
    @markup / 100.to_f
  end
end
