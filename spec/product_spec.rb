require 'rspec'
require 'product'

RSpec.describe 'Product' do
  let(:product) { Product.new(product_type: 'hoodie', base_prices: @base_prices) }

  describe 'match?' do
    it 'finds the base prices for the product type' do
      expect(product.match?('hoodie')).to be true
    end
  end
end