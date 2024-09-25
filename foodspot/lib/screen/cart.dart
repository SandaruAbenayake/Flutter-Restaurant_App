import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // Sample cart items with name, price, and quantity
  final List<Map<String, dynamic>> _cartItems = [
    {'name': 'Item 1', 'price': 25.0, 'quantity': 2},
    {'name': 'Item 2', 'price': 15.0, 'quantity': 1},
    {'name': 'Item 3', 'price': 40.0, 'quantity': 3},
  ];

  // Function to calculate total price
  double _calculateTotalPrice() {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item['price'] * item['quantity'];
    }
    return total;
  }

  // Function to delete a cart item
  void _deleteItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(
        children: [
          // List of cart items
          Expanded(
            child: _cartItems.isEmpty
                ? const Center(
                    child: Text(
                      'Your cart is empty',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                : ListView.builder(
                    itemCount: _cartItems.length,
                    itemBuilder: (context, index) {
                      final item = _cartItems[index];
                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(item['name']),
                          subtitle: Text('Price: \$${item['price']}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    if (item['quantity'] > 1) {
                                      item['quantity']--;
                                    }
                                  });
                                },
                              ),
                              Text('${item['quantity']}'),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    item['quantity']++;
                                  });
                                },
                              ),
                              // Delete button
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  _deleteItem(index);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          // Total price
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${_calculateTotalPrice()}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Checkout button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: ElevatedButton(
              onPressed: _cartItems.isEmpty
                  ? null // Disable button if cart is empty
                  : () {
                      // Implement checkout functionality here
                    },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                backgroundColor: Colors.green, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                ),
                elevation: 5, // Shadow effect
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.payment, // Add an icon to the button
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Proceed to Checkout',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
