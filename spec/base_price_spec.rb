require 'rspec'
require 'product'
require 'base_price'

RSpec.describe 'BasePrice' do
  let(:option) { { "size": ["large"], "colour": ["white"] } }
  let(:product_base_price) { BasePrice.new(price: 3848, option: option) }
  let(:product) { Product.new(product_type: 'hoodie', base_prices: product_base_price) }

  describe 'match?' do
    it 'matches the price to the selected product based on the options' do
      expect(product[3848].match?(option)).to be true
    end
  end

  # describe 'base_price_for' do
  #   it 'finds the base price when given an option' do
  #     expect(product.base_price_for(option)).to eq(@price)
  #   end
  # end
end