import 'dart:ffi';

import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int currentPageIndex;

  HomePage({Key? key, required this.currentPageIndex}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPageIndex;

  List<ItemCateg> listCateg = [
    ItemCateg(itemName: "Home", itemImg: ""),
    ItemCateg(itemName: "Basquete", itemImg: ""),
    ItemCateg(itemName: "Volei", itemImg: ""),
    ItemCateg(itemName: "Futsal", itemImg: ""),
    ItemCateg(itemName: "TESTE", itemImg: ""),
    ItemCateg(itemName: "TESTE", itemImg: ""),
    ItemCateg(itemName: "TESTE", itemImg: ""),
  ];

  List<ProdItens> listProd = [
    ProdItens(itemName: ["sp1.1","sp1.2","sp1.3"], itemPrice: 15.3),
    ProdItens(itemName: ["sp2.1","sp2.2","sp2.3"], itemPrice: 15.3),
    ProdItens(itemName: ["sp3.1","sp3.2","sp3.3"], itemPrice: 15.3),
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    currentPageIndex = widget.currentPageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
              //Header
              color: ColorPalette.primaryColor,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bd/VERDE-CLARO.png',
                    width: MediaQuery.sizeOf(context).width,
                    height: 80,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 0),
                    child: TextField(
                      cursorColor: ColorPalette.primaryColor,
                      maxLength: 30,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: ColorPalette.primaryColor,
                          ),
                          filled: true,
                          fillColor: ColorPalette.secondaryColor,
                          hintText: "Buscar",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintStyle:
                              TextStyle(color: ColorPalette.primaryColor),
                          suffixStyle: TextStyle(color: Colors.blue)),
                    ),
                  )
                ],
              )),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                    children: List.generate(listCateg.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        //selectedIndex = index;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 25, top: 20),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/cover.jpg",
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        )),
                  );
                })),
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                  children: List.generate(listCateg.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? ColorPalette.primaryColor
                            : ColorPalette.thirdColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                      listCateg[index].itemName,
                      style: TextStyle(
                          fontSize: 16,
                          color: index == selectedIndex
                              ? ColorPalette.thirdColor
                              : ColorPalette.primaryColor),
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(height: 40),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (MediaQuery.of(context).size.width - 30 - 15)/(2*290),
              mainAxisSpacing: 45,
              crossAxisSpacing: 15
            ),
            itemCount: listProd.length,
            itemBuilder: (_,i){
              //if(i%2==0){
                return ProductCard(listProd[i]);
              //}
              /*return OverflowBox(
                maxHeight: 290.0 + 70.0,
                child: Container(
                  margin: EdgeInsets.only(top: 70),
                  padding: EdgeInsets.only(right: 10,left: 10),
                  child: ProductCard(listProd[i]),
                ),
              );*/
            }
          ),
          //SizedBox(height: 100)
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: ColorPalette.primaryColor,
        foregroundColor: ColorPalette.thirdColor,
        child: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
