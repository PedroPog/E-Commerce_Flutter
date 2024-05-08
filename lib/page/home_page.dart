import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ColorPalette.fundo,
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 18),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorPalette.primaryColor,
        foregroundColor: ColorPalette.thirdColor,
        child: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
