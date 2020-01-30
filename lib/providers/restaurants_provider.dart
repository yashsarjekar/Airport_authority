import 'package:flutter/material.dart';

import '../models/restaurants.dart';

//import 'package:provider/provider.dart';
class RestaurantsProvider with ChangeNotifier {

  List<Restaurant> _restaurantList = [
    Restaurant(
        id: 'r1',
        locationid: 'l1',
        restaurantName: 'Lamba',
        restaurantImgUrl:
            'https://images.freeimages.com/images/small-previews/995/restaurant-1056987.jpg',
        latitude: 23,
        longitude: 32,
        menu: {
          'i1': {'burgur',50},
          'i2': {'chiken',150},
          'i3': {'rooti',200},
        }),
    Restaurant(
        id: 'r2',
        locationid: 'l2',
        restaurantName: 'Sadguru',
        restaurantImgUrl:
            'https://images.freeimages.com/images/small-previews/f2b/people-at-restaurant-1530552.jpg',
        latitude: 23,
        longitude: 32,
        menu: {
          'i1':{'burger', 50},
          'i2':{'chiken', 150},
          'i3':{'rooti', 40},
          'i4':{'panner tikka',300},
        }),
  ];
  List<Restaurant> get restaurantList{
    return [..._restaurantList];
  }
}
