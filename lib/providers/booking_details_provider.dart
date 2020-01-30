import 'package:flutter/material.dart';
import '../models/booking_details.dart';
import 'package:intl/intl.dart';

class BookingDetailsProvider with ChangeNotifier {
  List<BookingDetails> _booking = [];

  List<BookingDetails> get booking {
    return [..._booking];
  }

  void addbooking(double noRooms, double noGuest,String hotelname, String typeOfRoom,double price,
      DateTime checkIn, DateTime checkOut) {
    _booking.insert(
        0,
        BookingDetails(
          id: DateTime.now().toString(),
          noOfRooms: noRooms,
          noOfGuest: noGuest,
          hotelname: hotelname,
          typeOfroom: typeOfRoom,
          price: price,
          checkInDate: DateFormat('dd/MM/yyyy').format(checkIn).toString(),
          checkOutDate: DateFormat('dd/MM/yyyy').format(checkOut).toString(),
        ));
  }
}
