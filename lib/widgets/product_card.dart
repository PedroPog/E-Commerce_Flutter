import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final ProdItens listProd;

  ProductCard(this.listProd, {super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 198, 198),
                  //border: Border.all(width: 0.5, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onHorizontalDragUpdate: (details) {
                      if (details.delta.dx < -10) {
                        setState(() {
                          imageIndex = (imageIndex + 1) %
                              widget.listProd.itemName.length;
                        });
                      }
                    },
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ProductScreen(widget.listProd)));
                    },
                    child: Image.asset(
                      "assets/produtos/${widget.listProd.itemName[imageIndex]}.png",
                      fit: BoxFit.cover,
                      height: 290,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite =
                                  !isFavorite; // Alterna o estado do botão
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
                      ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
