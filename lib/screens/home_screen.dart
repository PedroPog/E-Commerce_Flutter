import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  List<String> catList = [
    "Promoção",
    "Mais Vendidos",
    "Futebol",
    "Basquete",
    "Futebol Americano",
    "Segredo"
  ];

  List<String> imgList = [
    "Warm Jacket",
    "Black T-Shirt",
    "Black Pant",
    "Ladies Bag"
  ];

  int selectedIndex = 0; // Índice da categoria selecionada

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: Color(0XFFF7F8FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Find your product",
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0XFFF7F8FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, top: 20),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/cover.jpg",
                      width: MediaQuery.of(context).size.width / 1.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: List.generate(catList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index; // Atualiza o índice selecionado
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 18),
                            decoration: BoxDecoration(
                              color: index == selectedIndex
                                  ? Color(0xFFFD725A) // Cor do item selecionado
                                  : Color(0xFFF7F8FA), // Cor padrão
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              catList[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: index == selectedIndex
                                    ? Colors.white // Cor do texto do item selecionado
                                    : Colors.grey, // Cor do texto padrão
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width - 30 - 15) /
                            (2 * 290),
                    mainAxisSpacing: 45,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: imgList.length,
                  itemBuilder: (_, i) {
                    if (i % 2 == 0) {
                      return ProductCard(imgList[i]);
                    }
                    return OverflowBox(
                      maxHeight: 290.0 + 70.0,
                      child: Container(
                        margin: EdgeInsets.only(top: 70),
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: ProductCard(imgList[i]),
                      ),
                    );
                  },
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
