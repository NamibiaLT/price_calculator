require 'rspec'
require 'application'

RSpec.describe 'Application' do
  describe 'cli' do
    let(:cart_file) { 'example-data/cart_4560.json' }
    let(:base_price_file) { 'example-data/base_prices.json' }
    let(:application) { Application.new(cart_file, base_price_file) }

    it 'should print out the base price for one item' do
      allow(STDOUT).to receive(:puts)
      expect(STDOUT).to receive(:puts).with('Product: hoodie, Colour: white, dark, Size: small, Price: $38.00')
      application.cli
    end
  end
end

RSpec.describe 'BasePrice' do
  describe 'match?' do
    it 'matches the price to the selected product based on the options'
    # TODO
    end
  end
end

RSpec.describe 'Product' do
  describe 'match?' do
    it 'finds the base prices for the product type' do
      # TODO
    end
  end
end

RSpec.describe 'CartPrice' do
  describe 'calculate' do
    it 'finds the total price of the cart based on the base price for the porduct option'
      # TODO
    end
  end
end