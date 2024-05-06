import 'package:ecommerce/page/home_page.dart';
import 'package:ecommerce/page/login_page.dart';
import 'package:ecommerce/page/register_page.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

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
}
