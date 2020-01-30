import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';
import '../widgets/app_drawer.dart';
class MainScreen extends StatefulWidget {
  static const routeName = 'hotel';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Traveller'),
      
      ),
      drawer: AppDrawer(),
      body: ProductGrid(),
    );
  }
}