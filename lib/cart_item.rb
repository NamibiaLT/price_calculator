require 'json'

class CartItem
  attr_reader :product_type, :options, :markup, :quantity

  def initialize(product_type:, options:, markup:, quantity:)
    @product_type = product_type
    @options = options
    @markup = markup
    @quantity = quantity
  end

  def price_lookup
    product = parsed_base_prices_file.find { |product| product.match?(product_type) }
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

  def parsed_base_prices_file
    ProductParser.new('./example-data/base_prices.json').parse
  end
end
