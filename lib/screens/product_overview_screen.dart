import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/widgets/product_item.dart';

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  final List<Product> loadedProducts = [
    Product(
        id: 'P1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 399,
        imageUrl:
            'https://img.looksgud.com/upload/item-image/605/cyuf/cyuf-invictus-men-red-checked-slim-fit-formal-shirt_500x500_0.jpg'),
    Product(
      id: 'P2',
      title: 'Black Shirt',
      description: 'Classic Black',
      price: 499,
      imageUrl:
          'https://rukminim1.flixcart.com/image/714/857/shirt/u/e/h/zeppblk-james-m-original-imaem4kp7fcq4r9f.jpeg?q=50',
    ),
    Product(
      id: 'P3',
      title: 'White Shirt',
      description: 'Classic White',
      price: 899,
      imageUrl:
          'https://4.imimg.com/data4/OE/EX/MY-10521202/formal-white-shirt-500x500.jpg',
    ),
    Product(
      id: 'P4',
      title: 'Green Shirt',
      description: 'Classic Green',
      price: 599,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71zlRXizASL._UL1500_.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
