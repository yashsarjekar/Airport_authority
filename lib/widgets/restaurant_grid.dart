import 'package:flutter/material.dart';
import '../providers/restaurants_provider.dart';
import 'package:provider/provider.dart';
import './restraunt_grid_list.dart';
class RestaurantGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<RestaurantsProvider>(context).restaurantList;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: restaurant.length ,
       itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: restaurant[i],
              child: RestaurantGridList(),
            ),
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
    );
  }
}