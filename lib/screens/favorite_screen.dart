import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10,left: 15,right: 15, bottom: 30),
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
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10,top: 5),
                  alignment: Alignment.center,
                  child: ClipRRect(
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}