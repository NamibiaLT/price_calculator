require 'rspec'
require 'json'
require 'cart_parser'

RSpec.describe 'CartParser' do
  let(:cart_parser) { CartParser.new('./example-data/cart_4560.json') }
  let(:item) { cart_parser.parse }
  let(:option) { 
    {
      "size": "small",
      "colour": "white",
      "print-location": "front"
    }
  }

  describe 'parse' do
    it 'sets the product type for an item' do
      expect(item[0].product_type).to eq('hoodie')
    end

    it 'sets the artist markup for an item' do
      expect(item[0].markup).to eq(20)
    end    
    
    it 'sets options for an item' do
      expect(item[0].options).to eq(option)
    end

    it 'sets the quantity for an item' do
      expect(item[0].quantity).to eq(1)
    end
  end
end