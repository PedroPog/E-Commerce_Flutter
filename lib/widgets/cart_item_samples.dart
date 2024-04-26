import 'package:ecommerce/model/item_cart.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  final CartItem cartItem;

  CartItemSamples({
    required this.cartItem,
  });

  @override
  _CartItemSamplesState createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      
      child: Row(
        children: [
          Checkbox(
            checkColor: Colors.white,
            activeColor: Color(0xFFFD725A),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/${widget.cartItem.itemName}.png"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.cartItem.itemName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (widget.cartItem.itemQuantity > 0) {
                            widget.cartItem.itemQuantity--;
                          }
                        });
                      },
                    ),
                    Text(widget.cartItem.itemQuantity.toString()),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          widget.cartItem.itemQuantity++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
