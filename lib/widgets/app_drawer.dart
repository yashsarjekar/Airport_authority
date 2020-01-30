import 'package:flutter/material.dart';
import '../screens/restaurants_screen.dart';
import '../screens/booking_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Hello User!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.hotel),
            title: Text('Hotels'),
            onTap: (){
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_taxi),
            title: Text('Taxi'),
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Restaurants'),
            onTap: () {
              Navigator.of(context).pushNamed(RestaurantScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Your Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(BookingScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
          )
        ],
      ),
    );
  }
}
