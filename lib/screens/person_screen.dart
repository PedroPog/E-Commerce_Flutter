import 'package:ecommerce/page/home_page.dart';
import 'package:flutter/material.dart';

class ParsonScreen extends StatefulWidget {
  const ParsonScreen({Key? key}) : super(key: key);

  @override
  _ParsonScreenState createState() => _ParsonScreenState();
}

class _ParsonScreenState extends State {
  String? authToken; // Token de autenticação

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, // Oculta o texto digitado
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String? token =
                    'seu_token_gerado'; // Substitua 'seu_token_gerado' pelo token real
                setState(() {
                  authToken = token; // Atualiza o token de autenticação
                });
                if (authToken != null) {
                  // Navega para a próxima tela
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(currentPageIndex: 0)),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}


