require 'rspec'
require 'json'
require 'cart_parser'

RSpec.describe 'CartParser' do
  let(:cart_parser) { CartParser.new('./example-data/cart_4560.json') }
  let(:options) { { 'size': 'small', 'colour': 'white', 'print-location': 'front' } }
  describe 'parse' do
    it 'creates a cart with items' do
      cart = cart_parser.parse
      expect(cart).to be_a(Cart)
    end
  end
end
