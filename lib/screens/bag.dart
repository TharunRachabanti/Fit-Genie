import 'package:flutter/material.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({required Key key}) : super(key: key);

  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  List<Map<String, dynamic>> cartItems = [    {      'id': 1,      'name': 'shirt',      'price': 500.0,      'quantity': 2,      'imageUrl': 'assets/images/men.jpg',    },    {      'id': 2,      'name': 'Trouser',      'price': 100.0,      'quantity': 1,      'imageUrl': 'assets/images/women.jpg',    },    {      'id': 3,      'name': 'Hoodie',      'price': 1000.0,      'quantity': 3,      'imageUrl': 'assets/images/kids.jpg',    },  ];

  double getSubtotal() {
    double subtotal = 0.0;
    cartItems.forEach((item) {
      subtotal += item['price'] * item['quantity'];
    });
    return subtotal;
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index]['quantity']++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index]['quantity'] > 1) {
        cartItems[index]['quantity']--;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
        'Bag',
        style: TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
    ),
    ),
    centerTitle: true,

    ),
    body: cartItems.isEmpty
    ? Center(
    child: Text('Your cart is empty.'),
    )
        : SingleChildScrollView(
    child: Column(
    children: [
    ListView.builder(
    itemCount: cartItems.length,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
    return Card(
    elevation: 5.0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0),
    side: BorderSide(
    color: Colors.grey.withOpacity(0.2),
    width: 1,
    ),
    ),
    margin: EdgeInsets.all(20.0),
     // padding: const EdgeInsets.all(20),
    child: ListTile(
    leading: Container(
      child: Image.asset(
      cartItems[index]['imageUrl'],
      ),
      height: 50,
      width: 50,
    ),
    title: Text(
    cartItems[index]['name'],
    ),
    subtitle: Text(
    '\$${cartItems[index]['price']} x ${cartItems[index]['quantity']}',
    ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => decreaseQuantity(index),
            icon: Icon(Icons.remove),
          ),
          Text('${cartItems[index]['quantity']}'),
          IconButton(
            onPressed: () => increaseQuantity(index),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => removeItem(index),
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    ),
    );
    },
    ),
      SizedBox(
        height: 16.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal:',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$${getSubtotal()}',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 16.0,
      ),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
        onPressed: () {
          // Add checkout functionality here
        },
        child: Text('Checkout'),
      ),
    ],
    ),
    ),
    );
  }
}

// This class represents the BagScreen which displays the items that have been added to the cart.
// The cartItems list contains a Map for each item that contains the id, name, price, quantity, and imageUrl.
// The getSubtotal() function calculates the subtotal of all the items in the cart.
// The increaseQuantity(), decreaseQuantity(), and removeItem() functions are used to modify the quantity of an item or remove it from the cart.
// The build() method returns a Scaffold widget that displays the cart items in a ListView and shows the subtotal and a checkout button.


