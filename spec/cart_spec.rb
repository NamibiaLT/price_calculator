require 'rspec'
require 'cart_item'
require 'cart'

RSpec.describe 'Cart' do
  let(:option1) { { 'size': 'small', 'colour': 'white', 'print-location': 'front' } }
  let(:cart_item1) { CartItem.new(product_type: 'hoodie', options: option1, markup: 20, quantity: 1) }
  let(:cart_item2) { CartItem.new(product_type: 'hoodie', options: option1, markup: 10, quantity: 2) }
  let(:cart) { Cart.new([cart_item1]) }
  describe 'cart_total' do
    it 'iterates through cart item prices and finds the total price of the cart' do
      expect(cart.cart_total).to eq(4560)
    end
  end
end
