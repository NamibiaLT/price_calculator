require 'rspec'
require 'application'

RSpec.describe 'Application' do
  describe 'cli' do
    let(:cart_file) { 'http://take-home-test.herokuapp.com/cart-4560.json' }
    let(:base_price_file) { 'http://take-home-test.herokuapp.com/base-prices.json' }
  end
end