import 'package:flutter/material.dart';

class Hotel with ChangeNotifier{
  final String id;
  final String locationid;
  final String roomid;
  final String hotelname;
  final String hotelImgUrl;
  final double totalrooms;
  final double longitude;
  final double latitude;

  Hotel(
      {@required this.id,
      @required this.locationid,
      @required this.roomid,
      @required this.hotelname,
      @required this.hotelImgUrl,
      @required this.totalrooms,
      @required this.longitude,
      @required this.latitude});
}
