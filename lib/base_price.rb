require 'pry'
class BasePrice
  attr_reader :price, :options

  def initialize(options:, price:)
    @options = options
    @price = price
  end

  def match?(options)
    options.all? do |key, value|
      @options[key].include?(value) if @options[key]
    end
  end
end
