# Price Calculator App

### Description
This is a price calculator command line program, that takes two arguments a cart and a list of prices. The program outputs the total price (in cents) of items in your cart.

### Instructions
Change into the price_calculator directory, then run ```bundle exec rspec``` in the command line 

### Functional Requirements of the Price Calculator APP:
* Your program should take two command-line arguments:
    1. a JSON file representing a cart, and
    2. a JSON file representing a list of base prices.
* The cart schema is available at: [Cart schema] (/cart.schema.json). Some example carts are available at: [Sample cart 1](/cart-4560.json), [Sample cart 2] (/cart-9363.json), [Sample cart 3] (/cart-9500.json), and [Sample cart ] (/cart-11356.json). 
* The base price schema is available at: [Base price schema] (/base-prices.schema.json). An example of base prices is available at: [Sample base prices] (/base-prices.json).
* You can assume that the options for a product-type are constant. 
    * For example, if the first record with the product-type 'hoodie' in the list of base prices only has the options 'colour' and 'size', all records with the product-type 'hoodie' in the list of base prices will have the options 'colour' and 'size' and will have no other options.
* Calculate the price for one item as follows: (base_price + round(base_price * artist_markup in cents)) * quantity
* Your program should output the total price in cents followed by a newline character. 
* As an aid in testing your program, the name of each example cart file mentioned above includes the expected total price for that cart given the base prices in the example base prices file mentioned above.
* Your program should handle products with any options, even ones not found in the sample files.
* The time your program takes to calculate a price should be constant with respect to the number of base prices. (In real life, Redbubble currently has more than 1,000 base prices.)
* You need not test that the input files conform with their schemas or handle errors that arise if they don't conform or if they don't go with each other (e.g. if there is no base price for a product type in the cart). We'd all want those tests in a production application, but in this exercise they tend to take time without adding interest.

### Ruby Installation
*Note: I am using Ruby version ruby 2.4.1*
There are several installation packages that allow you to install Ruby. Depending on your operating system, you may want to run the following in your command line (or website) in order to install Ruby:
* Mac OS X, use homebrew: ```brew install ruby```
* Linux, use pacman: ```sudo pacman -S ruby```
* Source-based methods, use FreeBSD: ```pkg install ruby``` 
* Windows, run the ruby installer: https://rubyinstaller.org

Run ```bundle install``` to make sure that all of the gems are installed on your machine so that the app runs properly.

