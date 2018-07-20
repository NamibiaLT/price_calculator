require 'rspec'
require 'cart_item'
require 'cart'
require 'base_price'
require 'json'

RSpec.describe 'Cart' do
  let(:option) { {"size": "small", "colour": "white", "print-location": "front"} }
  let(:item_details) { Cart.new(options: option, markup: 20, quantity: 1) }
  let(:item) { CartItem.new(product_type: 'hoodie', details: item_details)}

  describe 'cart_item_to_product' do
    it 'matches the cart item to the product on file' do
      expect(item.cart_item_to_product).to be true
    end
  end

  describe 'total' do
    it 'finds the total price of the cart' do
      expect(item.total).to eq(4560)
    end
  end
end