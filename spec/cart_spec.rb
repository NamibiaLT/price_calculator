require 'rspec'
require 'cart_items'
require 'cart'
require 'pry'

RSpec.describe 'Cart' do
  let(:option1) { {"size": "small", "colour": "white", "print-location": "front"} }
  let(:cart_item1) { CartItems.new(product_type: 'hoodie', options: option1, markup: 20, quantity: 1).item_total(20, 1) }
  let(:cart_item2) { nil }
  let(:cart) { Cart.new(cart_item1, cart_item2) }
  describe 'cart_total' do
    it 'iterates through cart item prices and finds the total price of the cart' do
      expect(cart.cart_total).to eq(4560)
    end
  end
end