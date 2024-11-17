void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  orderPizza(order, pizzaPrices);
}

void orderPizza(List<String> order, Map<String, double> pizzaPrices) {

  double totalCost = 0;

  for (var pizza in order) {

    if (pizzaPrices.containsKey(pizza)) {
      print('The price of $pizza is \$${pizzaPrices[pizza]}');
      totalCost += pizzaPrices[pizza]!;
    } else {
      print('Sorry, $pizza is not available on the menu.');
    }
  }

  // Print the total cost of the valid order
  print('Total cost of the order is: \$${totalCost}');
}

