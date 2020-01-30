import 'package:flutter/material.dart';

class Hotel with ChangeNotifier{
  final String id;
  final String locationid;
  final String hotelname;
  final String hotelImgUrl;
  final String hotelImgUrl1;
  final String hotelImgUrl2;
  final double totalrooms;
  final double acprice;
  final double nonacprice;
  final String hotelDescription;
  final double longitude;
  final double latitude;
  bool isFavourite;

  Hotel(
      {@required this.id,
      @required this.locationid,
      @required this.hotelname,
      @required this.hotelImgUrl,
      @required this.hotelImgUrl1,
      @required this.hotelImgUrl2,
      @required this.totalrooms,
      @required this.acprice,
      @required this.nonacprice,
      @required this.hotelDescription,
      @required this.longitude,
      @required this.latitude,
      this.isFavourite =false,
      });
}
