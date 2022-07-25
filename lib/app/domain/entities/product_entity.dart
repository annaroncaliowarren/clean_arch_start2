// regras de negócio corporativas
class ProductEntity {
  int id;
  String name;
  String brand;
  String category;
  double price;
  int quantity;

  ProductEntity({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.quantity,
  });

  bool checkAvailability() {
    if (quantity > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool checkPrice() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }
}
