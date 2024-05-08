import 'package:ecommerce/model/item_cart.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  final ProdItens listProd;
  CustomBottomSheet(this.listProd);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  List sizes = ['S', 'M', 'L', 'XL'];
  int selectedIndex = -1;
  late ProdItens _itens;

  @override
  void initState() {
    super.initState();
    _itens = widget.listProd;
  }

  @override
  Widget build(BuildContext context) {
    SheetItem resp = new SheetItem(
        itemSize: "",
        itemQtd: 1,
        itemValorTotal: _itens.itemPrice,
        itemName: _itens.itemName,
        itemPrice: _itens.itemPrice,
        name: _itens.name);

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
          color: ColorPalette.primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
                color: ColorPalette.secondaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Size: ",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.thirdColor),
              ),
              SizedBox(width: 30),
              for (int i = 0; i < sizes.length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i; // Atualize o índice selecionado
                      resp.itemSize = sizes[i];
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 45,
                    width: 43,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: selectedIndex == i
                          ? ColorPalette.secondaryColor
                          : ColorPalette
                              .thirdColor, // Altere a cor do item selecionado
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      sizes[i],
                      style: TextStyle(
                          color: selectedIndex == i
                              ? ColorPalette.thirdColor
                              : Colors
                                  .black), // Altere a cor do texto do item selecionado
                    ),
                  ),
                )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Total:",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.thirdColor),
              ),
              SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (resp.itemQtd > 0) {
                      resp.itemQtd--;
                      print(resp.itemQtd);
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: ColorPalette.thirdColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    CupertinoIcons.minus,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                resp.itemQtd.toString(),
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: ColorPalette.thirdColor),
              ),
              SizedBox(width: 8),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      resp.itemQtd++;
                      print(resp.itemQtd);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorPalette.thirdColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      CupertinoIcons.add,
                      size: 18,
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorPalette.thirdColor,
                ),
              ),
              Text(
                "R\$ 300.52",
                style: TextStyle(
                    color: ColorPalette.thirdColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              decoration: BoxDecoration(
                  color: ColorPalette.thirdColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Checkout",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
