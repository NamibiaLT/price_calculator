require 'cart_items'

RSpec.describe 'CartItems' do
  let(:option) { {"size": "small", "colour": "white"} }
  let(:item) { CartItems.new(product_type: 'hoodie', options: option, markup: 20, quantity: 1)}

  describe 'price_lookup' do
    it 'looks up the base price of an item' do
      expect(item.price_lookup('hoodie', option)).to eq(3800)
    end
  end

  describe 'item_total' do
    it 'calculates the total in cents for one item after markup and given a quantity' do
      expect(item.item_total(20, 1)).to be(4560)
    end
  end
end