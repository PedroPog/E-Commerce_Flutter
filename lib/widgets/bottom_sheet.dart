import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  List sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
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
                color: ColorPalette.secondaryColor, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Size: ",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: ColorPalette.thirdColor),
              ),
              SizedBox(width: 30),
              for (int i = 0; i < sizes.length; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: ColorPalette.thirdColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(sizes[i],style: TextStyle(color: Colors.black)),
                )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Color: ",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: ColorPalette.thirdColor),
              ),
              SizedBox(width: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Color(0xFF031C3C),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Color(0xFF3BA48D),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
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
                    color: ColorPalette.thirdColor
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorPalette.thirdColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(
                    CupertinoIcons.minus,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 8),
                Text("01",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: ColorPalette.thirdColor
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorPalette.thirdColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 18,
                    color: Colors.black,
                  ),
                )
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
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
                decoration: BoxDecoration(
                  color: ColorPalette.thirdColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.black
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
