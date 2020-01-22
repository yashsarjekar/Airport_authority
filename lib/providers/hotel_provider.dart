import 'package:flutter/material.dart';
import '../models/hotel.dart';

class HotelProvider with ChangeNotifier {
  List<Hotel> hotelList = [
    Hotel(
        id: 'p1',
        locationid: 'l1',
        roomid: 'r1',
        hotelname: 'Oberio',
        hotelImgUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        totalrooms: 30,
        longitude: 72.48,
        latitude: 212),
    Hotel(
        id: 'p1',
        locationid: 'l1',
        roomid: 'r1',
        hotelname: 'Taj Hotel',
        hotelImgUrl:
            'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
        totalrooms: 30,
        longitude: 72.48,
        latitude: 212),
  ];
  List<Hotel> get hotels {
    return [...hotelList];
  }
}
