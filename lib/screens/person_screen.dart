import 'package:flutter/material.dart';

class ParsonScreen extends StatefulWidget {
  const ParsonScreen({Key? key}) : super(key: key);

  @override
  _ParsonScreenState createState() => _ParsonScreenState();
}

class _ParsonScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 150,
                    ),
                    Text("NOME COMPLETO"),
                    Text("")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
