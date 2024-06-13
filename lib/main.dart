import 'package:ecommerce/Provider/cart_provider.dart';
import 'package:ecommerce/Provider/favorite_provider.dart';
import 'package:ecommerce/page/carrinho_page.dart';
import 'package:ecommerce/page/login_page.dart';
import 'package:ecommerce/page/register_page.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom], // Shows Status bar and hides Navigation bar
  );
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CartProvider()),
            ChangeNotifierProvider(create: (_) => FavoriteProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              textTheme: GoogleFonts.mulishTextTheme()
            ),
            routes: {
              '/': (context) => HomeScreen(),
              '/login': (context) => LoginPage(),
              '/register': (context) => RegisterPage(),
              '/carrinho':(context) => CartPage()
            },
          ));
}
/*
@override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom, // Shows Status bar and hides Navigation bar
      ],
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          '/':(context)=>HomeScreen(),
          '/login':(context)=>LoginPage(),
          '/register':(context)=>RegisterPage()
        },);
  }
*/