#!/usr/bin/env ruby

$:.unshift File.join(__FILE__, '..', '..', './example-data/base_prices.json', 'lib')

base_prices_file = ARGV[0]
cart_file = ARGV[1]

if base_prices_file.nil? || cart_file.nil?
  puts "Remember to put: #{__FILE__} /path/to/base_prices/file /path/to/cart/file"
  exit 2
end

require './lib/application'

Application.new(cart_file, base_prices_file).cli
