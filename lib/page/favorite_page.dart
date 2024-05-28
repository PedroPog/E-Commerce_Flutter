import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorito"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: ColorPalette.primaryColor,
        foregroundColor: ColorPalette.thirdColor,
      ),
    );
  }
}