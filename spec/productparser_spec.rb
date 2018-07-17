require 'rspec'
require 'application'

RSpec.describe 'ProductParser' do
  describe 'parse' do
    let(:product_parser) { ProductParser.new(base_price_file) }
    let(:products) { product_parser.parse }

    it 'returns one product' do
      expect(products.size).to eq(1)
    end

    it 'sets the product type on the product' do
      expect(products[0].product_type).to eq('hoodie') 
    end    
    
    it 'sets the base-price on the product' do
      expect(products[0].base_price).to eq(3800)
    end
  end
end