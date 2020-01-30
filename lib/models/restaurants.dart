import 'package:flutter/material.dart';


class Restaurant with ChangeNotifier {
  final String id;
  final String locationid;
  final String restaurantName;
  final String restaurantImgUrl;
  final Map<String, Object> menu;
  final double longitude;
  final double latitude;
  bool isFavourite;
  Restaurant(
      {@required this.id,
      @required this.locationid,
      @required this.restaurantName,
      @required this.restaurantImgUrl,
      @required this.menu,
      @required this.longitude,
      @required this.latitude,
      this.isFavourite});
}
