class Product {
  final String id;
  final String name;
  final String subTitle;
  final String price;
  final String imagePath;

  Product({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.imagePath,
  });
}

List<Product> products = [
  Product(
    id: '1',
    name: 'Samsung Galaxy S24 Ultra',
    subTitle: '8GB RAM | 256GB Storage',
    price: '\$899',
    imagePath: 'assets/images/s24.jpg',
  ),
  Product(
    id: '2',
    name: 'MacBook Pro M3',
    subTitle: '16GB RAM | 512GB SSD',
    price: '\$2399',
    imagePath: 'assets/images/macbook.jpg',
  ),
  Product(
    id: '3',
    name: 'PlayStation 5 Slim',
    subTitle: '1TB SSD | 4K HDR',
    price: '\$699',
    imagePath: 'assets/images/ps5.jpg',
  ),
];
