require 'json'

class BasePrice
  attr_reader :price, :options
  
  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    @options == options
  end
end