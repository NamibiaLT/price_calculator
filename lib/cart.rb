require 'json'

class Cart
  attr_reader :options, :markup, :quantity
  
  def initialize(options:, markup:, quantity:)
    @options = options
    @markup = markup
    @quantity = quantity
  end
end