import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int currentPageIndex;

  HomePage({Key? key, required this.currentPageIndex}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPageIndex;

  @override
  void initState() {
    super.initState();
    currentPageIndex = widget.currentPageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              color: ColorPalette.primaryColor,
              width: MediaQuery.sizeOf(context).width,
              height: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bd/logoone.png',
                    width: 200,
                    height: 60,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    "Athlete Apparel",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: ColorPalette.thirdColor),
                  ),
                ],
              )),
          Column()
        ],
      ),
    );
  }
}
