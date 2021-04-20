class Product {
  String imageUrl;
  String description;
  String details;
  int price;
  Product(this.imageUrl, this.description);
  Product.detail(this.imageUrl, this.description, this.details, this.price);
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

List<Product> getListProductDetails() {
  return [
    Product.detail('assets/images/clothes.jpg', 'Clothes',
        'Land area is 12 square kilometres: the land is seldom m', 10),
    Product.detail('assets/images/clothes2.jpg', 'Clothes',
        'Land area is 12 square kilometres: the land is seldom m', 10),
    Product.detail('assets/images/makeup.jpg', 'Makeup',
        'Land area is 12 square kilometres: the land is seldom m', 20),
    Product.detail('assets/images/makeup2.jpg', 'Makeup',
        'Land area is 12 square kilometres: the land is seldom m', 44),
    Product.detail('assets/images/perfume.jpg', 'Perfume',
        'Land area is 12 square kilometres: the land is seldom m', 33),
    Product.detail('assets/images/perfume2.jpg', 'Perfume',
        'Land area is 12 square kilometres: the land is seldom m', 66),
    Product.detail('assets/images/plane.jpg', 'Travel',
        'Land area is 12 square kilometres: the land is seldom m', 100),
  ];
}
