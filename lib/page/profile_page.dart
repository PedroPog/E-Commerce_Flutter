import 'package:ecommerce/model/person.dart';
import 'package:ecommerce/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool verificarUser = true;
  PersonDados infos = new PersonDados(
    name: "Pedro",
    imagem: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png",
    email: "pedro@gmail.com"
    ); 

  @override
  void initState() {
    super.initState();
    // Verifica a condição e navega se necessário
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        if (!verificarUser) {
          Navigator.pushNamed(context, '/login');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Enquanto a navegação está em andamento, retorne uma tela vazia ou um carregador
    return verificarUser
        ? Scaffold(
            appBar: AppBar(
              title: Text("Profile"),
              centerTitle: true,
              backgroundColor: ColorPalette.primaryColor,
              foregroundColor: ColorPalette.thirdColor,
            ),
            body: Card(
              margin: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width, // Define a largura do Card
                height: 250, // Define a altura do Card
                decoration: BoxDecoration(
                  color: ColorPalette.thirdColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    ClipOval(
                      child: Image.network(
                        infos.imagem,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      infos.name,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                      ), // Um texto exemplo
                    SizedBox(height: 10),
                    Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    Text(
                      infos.email,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38
                      ),
                    )
                  ],
                ),
              ),
            ))
        : Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
  }
}
