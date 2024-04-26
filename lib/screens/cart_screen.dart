import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/widgets/cart_item_samples.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List<CartItem> listCart = [
    CartItem(itemName: "Warm Jacket", itemPrice: 15.2, itemQuantity: 5),
    CartItem(itemName: "Black T-Shirt", itemPrice: 15.2, itemQuantity: 10),
    CartItem(itemName: "Black Pant", itemPrice: 15.2, itemQuantity: 2),
    CartItem(itemName: "Ladies Bag", itemPrice: 15.2, itemQuantity: 1),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  for(int i=0;i<listCart.length;i++)
                  CartItemSamples(
                    cartItem: listCart[i],
                  ),
                  SizedBox(height: 50),
                  /*Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select All",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        Checkbox(
                          activeColor: Color(0xFFFD725A),
                          value: true,
                          onChanged: (value) {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),*/
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Cost:",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        Text(
                          "R\$ 50.52",
                          style: TextStyle(
                              color: Color(0xFFFD725A),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payment:",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        Text(
                          "R\$ 300.52",
                          style: TextStyle(
                              color: Color(0xFFFD725A),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CartScreen()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                      decoration: BoxDecoration(
                          color: Color(0xFFFD725A),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Colors.white.withOpacity(0.9)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
