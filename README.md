# Price Calculator App

### Description
This is a price calculator command line program, that takes two arguments: a cart file and a list of base prices file. The program outputs the total price (in cents) of items in a cart.

### Instructions
Change into the price_calculator directory, then run ```bin/price_calculator_cli.rb /path/to/cart/file /path/to/base_prices/file``` in the command line. For example, you might type something like this in your command line: ```bin/price_calculator_cli.rb ./example-data/cart_4560.json ./example-data/base_prices.json```. Further description about the functional requirements of this app can be found here: http://take-home-test.herokuapp.com/new-product-engineer

### Design Methodology
In this app, a base price file gets parsed in order to extract data about a product, it's options, and its base price. A cart file, which represents a user's cart, also gets parsed in order to extract information about each item's product-type, options pertaining to an item (e.g. size and color), artist markup on each item, and the quantity of the order for each item. Based on the product-type and options, the base price for the item of the cart can be found from within the parsed base price file. In the CartItem class, the total price for an item is calculated using data about the base price, quantity of an item, and artist markup for an item. The Cart class, then asks for the total price of each item in the cart and returns the total price of the cart in the command line.

### Ruby Installation
*Note: I am using Ruby version ruby 2.4.1*
There are several installation packages that allow you to install Ruby. To run the program you need to have the correct dependencies. Run ```bundle install``` to make sure that all of the gems are installed on your machine so that the app runs properly.

