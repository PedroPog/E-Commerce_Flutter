import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/screens/favorite_screen.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/person_screen.dart';
import 'package:ecommerce/screens/personde_screen.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/cupertino.dart';
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
      bottomNavigationBar: NavigationBar(
        backgroundColor: ColorPalette.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: ColorPalette.primaryColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: ColorPalette.white,
              size: 30,
            ),
            icon: Icon(
              Icons.home,
              color: ColorPalette.grey,
              size: 30,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              CupertinoIcons.cart_fill,
              color: ColorPalette.white,
              size: 30,
            ),
            icon: Badge(
              label: Text('2'),//Trazer informação de quantos items no carrinho
              child: Icon(
                CupertinoIcons.cart_fill,
                color: ColorPalette.grey,
                size: 30,
              ),
              backgroundColor: ColorPalette.primaryColor,
            ),
            label: 'Carrinho',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
              color: ColorPalette.white,
              size: 30,
            ),
            icon: Icon(
              Icons.favorite,
              color: ColorPalette.grey,
              size: 30,
            ),
            label: 'Favorito',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: ColorPalette.white,
              size: 30,
            ),
            icon: Icon(
              Icons.person,
              color: ColorPalette.grey,
              size: 30,
            ),
            label: 'Perfil',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        HomeScreen(),

        /// Cart page
        CartScreen(),

        /// Favorite page
        FavoriteScreen(),

        /// Person page
        ParsonScreen(),
      ][currentPageIndex],
    );
  }
}