import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  List<ProdItens> listProd = [
    ProdItens(
        name: "Camisa Sâo Paulo 1",
        itemName: ["sp1.1", "sp1.2", "sp1.3"],
        itemPrice: 15.3,
        itemRating: 3.5),
    ProdItens(
        name: "Camisa Sâo Paulo 2",
        itemName: ["sp2.1", "sp2.2", "sp2.3"],
        itemPrice: 15.3,
        itemRating: 4.5),
    ProdItens(
        name: "Camisa Sâo Paulo 3",
        itemName: ["sp3.1", "sp3.2", "sp3.3"],
        itemPrice: 15.3,
        itemRating: 5),
    ProdItens(
        name: "Camisa Feia 1",
        itemName: ["cori1.1", "cori1.2"],
        itemPrice: 15.3,
        itemRating: 1.5),
    ProdItens(
        name: "Camisa Feia 2",
        itemName: ["cori2.1", "cori2.2"],
        itemPrice: 15.3,
        itemRating: 3),
    ProdItens(
        name: "Camisa Feia 3",
        itemName: ["cori3.1", "cori3.2"],
        itemPrice: 15.3,
        itemRating: 4.5),
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width - 30 - 15) /
                            (2 * 290),
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 15),
                itemCount: listProd.length,
                itemBuilder: (_, i) {
                  return ProductCard(listProd[i]);
                }),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}