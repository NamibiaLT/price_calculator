require 'json'

class BasePrice
  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    # TODO
  end
end