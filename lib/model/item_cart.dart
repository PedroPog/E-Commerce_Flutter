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
  final double itemRating;

  ProdItens({
    required this.name,
    required this.itemName,
    required this.itemPrice,
    required this.itemRating
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

class SheetItem{
  String itemSize;
  int itemQtd;
  double itemValorTotal;
  String name;
  List<String> itemName;
  double itemPrice;
  
  SheetItem({
    required this.itemSize,
    required this.itemQtd,
    required this.itemValorTotal,
    required this.itemName,
    required this.itemPrice,
    required this.name
  });
}

class CartItem2 {
  final String name;
  final String image;
  final double price;
  final int quantity;

  CartItem2({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}
