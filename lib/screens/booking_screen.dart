import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'package:provider/provider.dart';
import '../providers/booking_details_provider.dart';
import '../widgets/booking.dart';
class BookingScreen extends StatefulWidget {
  static const routeName = 'bookingscreen';
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    final _loadedData = Provider.of<BookingDetailsProvider>(context).booking; 
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Traveller',style: TextStyle(color: Colors.white),),
        iconTheme: Theme.of(context).iconTheme,
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: _loadedData.length,
        itemBuilder: (ctx,i)=> Booking(_loadedData[i]),
      ),
    );
  }
}