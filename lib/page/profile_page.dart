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
      imagem:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png",
      email: "pedro@gmail.com",
      address: "Rua aonde todos moram",
      phoneNumber: "(11) 1191234-5678");

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
    return verificarUser
        ? Scaffold(
            appBar: AppBar(
              title: Text("Profile"),
              centerTitle: true,
              backgroundColor: ColorPalette.primaryColor,
              foregroundColor: ColorPalette.thirdColor,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: ColorPalette.thirdColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          ),
                          SizedBox(height: 10),
                          Divider(
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          Text(
                            infos.email,
                            style: TextStyle(
                                fontSize: 20, color: Colors.black38),
                          ),
                          SizedBox(height: 10),
                          Text(
                            infos.phoneNumber,
                            style: TextStyle(
                                fontSize: 20, color: Colors.black38),
                          ),
                          SizedBox(height: 10),
                          Text(
                            infos.address,
                            style: TextStyle(
                                fontSize: 20, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit_profile');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.primaryColor,
                          ),
                          child: Text(
                            'Editar Perfil',
                            style: TextStyle(
                              color: ColorPalette.thirdColor
                            ),
                            ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/order_history');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.primaryColor,
                          ),
                          child: Text(
                            'Pedidos',
                            style: TextStyle(
                              color: ColorPalette.thirdColor
                            ),
                            ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/logout');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.primaryColor,
                          ),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: ColorPalette.thirdColor
                            ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
  }
}
