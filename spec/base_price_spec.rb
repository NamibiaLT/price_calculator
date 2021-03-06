require 'rspec'
require 'base_price'

RSpec.describe 'BasePrice' do
  let(:option) { { 'size': ['large'], 'colour': ['white'] } }
  let(:product_base_price) { BasePrice.new(price: 3848, options: option) }

  describe 'match?' do
    it 'matches the price to the selected product based on the options' do
      expect(product_base_price.match?(option)).to be true
    end
  end
end
