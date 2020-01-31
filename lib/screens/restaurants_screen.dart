import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/restaurant_grid.dart';
class RestaurantScreen extends StatelessWidget {
  static const routeName = 'restaurant';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Traveller',style: TextStyle(color: Colors.white),),
        iconTheme: Theme.of(context).iconTheme,
      ),
      drawer: AppDrawer(),
      body: RestaurantGrid(),
    );
  }
}