import 'package:ecommerce/page/favorite_page.dart';
import 'package:ecommerce/page/home_page.dart';
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
      bottomNavigationBar: NavigationBar(
        backgroundColor: ColorPalette.thirdColor,
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: ColorPalette.primaryColor,
        selectedIndex: currentPageIndex,
        labelBehavior: labelBehavior,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: ColorPalette.thirdColor,
            ),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
              color: ColorPalette.thirdColor,
            ),
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Favorite',
          ),
        ],
      ),
      body: <Widget>[
        HomePage(),
        FavoritePage(),
      ][currentPageIndex],
    );
  }
}