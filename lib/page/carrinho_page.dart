
import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem2> cartItems = [
    CartItem2(
      name: "Product 1",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png",
      price: 29.99,
      quantity: 2,
    ),
    CartItem2(
      name: "Product 2",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png",
      price: 19.99,
      quantity: 1,
    ),
  ];

  double get total {
    return cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        backgroundColor: ColorPalette.primaryColor,
        foregroundColor: ColorPalette.thirdColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.network(
                      cartItems[index].image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(cartItems[index].name),
                    subtitle: Text("Quantity: ${cartItems[index].quantity}"),
                    trailing: Text("\$${(cartItems[index].price * cartItems[index].quantity).toStringAsFixed(2)}"),
                  ),
                );
              },
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Total: \$${total.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPalette.primaryColor,
                    ),
                    child: Text('Checkout',style: TextStyle(
                              color: ColorPalette.thirdColor
                            ),),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shopping');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPalette.primaryColor,
                    ),
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(
                              color: ColorPalette.thirdColor
                            ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

