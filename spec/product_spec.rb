require 'rspec'
require 'product'
require 'base_price'

RSpec.describe 'Product' do
  let(:option) { { "size": ["large"], "colour": ["white"] } }
  let(:product_base_price) { BasePrice.new(price: 3848, option: option) }
  let(:product) { Product.new(product_type: 'hoodie', base_prices: product_base_price) }
  let(:no_product) { Product.new(product_type:nil, base_prices: nil) }

  context 'when a product type is given' do
    describe 'match?' do
      it 'finds the base prices for the product type' do
        expect(product.match?('hoodie')).to be true
      end
    end

    describe 'base_price_for' do
      it 'finds the base price when given an option' do
        expect(product.base_price_for(
          {
            "size": ["large"],
            "colour": ["white"]
          }
        )).to eq(3848)
      end
    end
  end

  context 'when there is no product type provided' do
    describe 'match?' do
      it 'does not match the prduct type' do
        expect(no_product.match?('hoodie')).to be false
      end
    end
  end
end