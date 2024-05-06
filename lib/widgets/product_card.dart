import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final ProdItens listProd;
  
  ProductCard(this.listProd, {super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: ColorPalette.grey,
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){
                      //Realizar rotas
                    },
                    child: Image.asset(
                      "assets/produtos/${widget.listProd.itemName[0]}.png",
                      fit: BoxFit.cover,
                      height: 240,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite; // Alterna o estado do botão
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: isFavorite ? Colors.red : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: isFavorite ? Colors.white : Colors.red,
                          ),
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}