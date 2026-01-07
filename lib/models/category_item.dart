class CategoryItem {
  final String name;
  final String imagePath;

  const CategoryItem({required this.name, required this.imagePath});
}

const categoryItems = [
  CategoryItem(name: 'Headphones', imagePath: 'assets/images/headphones.jpg'),
  CategoryItem(name: 'Tablets', imagePath: 'assets/images/tablets.jpg'),
  CategoryItem(name: 'Gaming', imagePath: 'assets/images/gaming.jpg'),
  CategoryItem(name: 'Speakers', imagePath: 'assets/images/speakers.jpg'),
  CategoryItem(name: 'Laptops', imagePath: 'assets/images/laptops.jpg'),
  CategoryItem(name: 'Smartphones', imagePath: 'assets/images/phones.jpg'),
  CategoryItem(
    name: 'PC Accessories',
    imagePath: 'assets/images/accessories.jpg',
  ),
  CategoryItem(name: 'Smart Watches', imagePath: 'assets/images/watches.jpg'),
  CategoryItem(name: 'Cameras', imagePath: 'assets/images/camera.jpg'),
  CategoryItem(name: 'Drones', imagePath: 'assets/images/drones.jpg'),
];
