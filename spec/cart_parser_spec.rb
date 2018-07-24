require 'rspec'
require 'json'
require 'cart_parser'

RSpec.describe 'CartParser' do
  let(:cart_parser) { CartParser.new('./example-data/cart_4560.json') }
  let(:item) { cart_parser.parse }

  describe 'parse' do
    it 'sets the product type for an item' do
      expect(item[0].product_type).to eq('hoodie')
    end
  end
end