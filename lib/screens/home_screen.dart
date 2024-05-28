import 'package:ecommerce/page/favorite_page.dart';
import 'package:ecommerce/page/home_page.dart';
import 'package:ecommerce/page/profile_page.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior = NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: ColorPalette.thirdColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: currentPageIndex == 0 ?
                ColorPalette.primaryColor :
                ColorPalette.secondaryColor,
              ),
              onPressed: (){
                setState(() {
                  currentPageIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border_rounded,
                color: currentPageIndex == 1 ?
                ColorPalette.primaryColor:
                ColorPalette.secondaryColor,
              ),
              onPressed: (){
                setState(() {
                  currentPageIndex = 1;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person_2_outlined,
                color: currentPageIndex == 2 ?
                ColorPalette.primaryColor:
                ColorPalette.secondaryColor,
              ),
              onPressed: (){
                setState(() {
                  currentPageIndex = 2;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorPalette.primaryColor,
        onPressed: (){

        },
        child: Icon(Icons.shopping_cart_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: <Widget>[
        ProfilePage(),
        FavoritePage(),
        HomePage(),
      ][currentPageIndex],
    );
  }
}