import 'package:flutter/material.dart';
import '../models/booking_details.dart';
class Booking extends StatefulWidget {
  final BookingDetails booking;
  Booking(this.booking);
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool _expanded =false;
  @override
  Widget build(BuildContext context) {
    return Card(
       margin: EdgeInsets.all(10),
       child: Column(
        children: <Widget>[
          ListTile(
            title: Text(widget.booking.hotelname),
            subtitle:
                Text('Rs-/' + widget.booking.price.toString()),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
           if (_expanded)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
              height: 200,
              child: Column(
                children: <Widget>[
                  Text('No Of Rooms' + widget.booking.noOfRooms.toString()),
                  Text('No Of Guest' + widget.booking.noOfGuest.toString()),
                  Text('Type of Room' + widget.booking.typeOfroom),
                  Text('CheckIn Date' + widget.booking.checkInDate),
                  Text('CheckOut Date' + widget.booking.checkOutDate),
                ],
              )
              ),
            
        ]
        ),
    );
  }
}