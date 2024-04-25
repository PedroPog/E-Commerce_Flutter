import 'package:ecommerce/utils/color_palette.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  List imgList = ["Warm Jacket", "Black T-Shirt", "Black Pant", "Ladies Bag"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Favoritos",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.width - 30 - 15) /
                              (2 * 290),
                      mainAxisSpacing: 45,
                      crossAxisSpacing: 15),
                  itemCount: imgList.length,
                  itemBuilder: (_,i){
                    return ProductCard(imgList[i]);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
