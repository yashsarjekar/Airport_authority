import 'package:flutter/material.dart';
class BookingDetails with ChangeNotifier{
 final String id;
 final double noOfRooms;
 final double noOfGuest;
 final String hotelname;
 final String typeOfroom;
 final double price;
 final String checkInDate;
 final String checkOutDate;
 BookingDetails({
   @required this.id,
   @required this.noOfRooms,
   @required this.noOfGuest,
   @required this.hotelname,
   @required this.typeOfroom,
   @required this.price,
   @required this.checkInDate,
   @required this.checkOutDate,
 });
}