require 'rspec'
require 'cart_items'
require 'cart'
require 'base_price'
require 'product'

RSpec.describe 'Cart' do
  let(:option) { {"size": "small", "colour": "white", "print-location": "front"} }
  let(:item) { CartItems.new(product_type: 'hoodie', options: option, markup: 20, quantity: 1)}

  describe 'cart_total' do
    it 'finds the total price of the cart' do
      expect(item.cart_total).to eq(4560)
    end
  end
end