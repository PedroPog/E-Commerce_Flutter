class CartItem {
  final String itemName;
  final double itemPrice;
  int itemQuantity;

  CartItem({
    required this.itemName,
    required this.itemPrice,
    required this.itemQuantity,
  });
}

class ProdItens {
  final String name;
  final List<String> itemName;
  final double itemPrice;

  ProdItens({
    required this.name,
    required this.itemName,
    required this.itemPrice,
  });
}

class ItemCateg{
  final String itemName;
  final String itemImg;

  ItemCateg({
    required this.itemName,
    required this.itemImg
  });
}