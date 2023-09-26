class Product {
  final String name;
  final double price;
  int counter;
  Product({required this.name, required this.price, this.counter = 0});
}

final List<Product> products = [
  Product(name: 'Smartphone', price: 699),
  Product(name: 'Laptop', price: 899),
  Product(name: 'Tablet', price: 399),
  Product(name: 'HeadPhones', price: 169),
  Product(name: 'Camera', price: 499),
  Product(name: 'Smartwach', price: 299),
  Product(name: 'Blutooth ', price: 99),
  Product(name: 'Speaker', price: 399),
  Product(name: 'HDTv', price: 699),
  Product(name: 'Wireless Mouse', price: 98),
  Product(name: 'Charger', price: 29),
];
