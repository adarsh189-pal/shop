import 'package:flutter/material.dart';
import 'package:shop/screens/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsOverviewScreen(),
      theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato'),
    );
  }
}

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shop'),
      ),
      body: Center(child: Text('Lets go')),
    );
  }
}
