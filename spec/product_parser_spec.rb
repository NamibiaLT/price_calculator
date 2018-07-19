require 'rspec'
require 'product_parser'

RSpec.describe 'ProductParser' do
  describe 'parse' do
    let(:product_parser) { ProductParser.new(@filename) }
    let(:products) { product_parser.parse }

    it 'returns one product' do
      expect(products.size).to eq(3)
    end

    it 'sets the product type on the product' do
      expect(products[0].product_type).to eq('hoodie') 
    end    
    
    it 'sets the base-price on a product' do
      expect(products[0].base_prices[0].price).to eq(3800)
    end
  end
end