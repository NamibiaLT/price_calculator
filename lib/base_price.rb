require 'json'

class BasePrice
  attr_reader :price
  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    # TODO
  end
end