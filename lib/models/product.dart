class Product {
  String imageUrl;
  String description;

  Product(this.imageUrl, this.description);
}

List<Product> getListProduct() {
  return [
    Product('assets/images/clothes.jpg', 'Clothes'),
    Product('assets/images/clothes2.jpg', 'Clothes'),
    Product('assets/images/makeup.jpg', 'Makeup'),
    Product('assets/images/makeup2.jpg', 'Makeup'),
    Product('assets/images/perfume.jpg', 'Perfume'),
    Product('assets/images/perfume2.jpg', 'Perfume'),
    Product('assets/images/plane.jpg', 'Travel'),
  ];
}
