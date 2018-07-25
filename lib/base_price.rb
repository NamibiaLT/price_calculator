class BasePrice
  attr_reader :price, :options

  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    options.all? { |values| @options.values }
  end
end
