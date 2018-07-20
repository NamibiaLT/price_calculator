require 'json'
require 'cart_item'

RSpec.describe 'CartItem' do
  let(:option) { {"size": "small", "colour": "white", "print-location": "front"} }
  let(:item_details) { Cart.new(options: option, markup: 20, quantity: 1) }
  let(:item) { CartItem.new(product_type: 'hoodie', details: item_details)}

  describe 'match?' do
    it 'matches the product type to the details' do
      expect(item.match?('hoodie')).to be true
    end
  end

  describe 'item_details_for' do
    it 'finds the item markup when given options for an item' do
      expect(item.item_markup_for(option)).to be(item_details.markup)
    end
  end
end