import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'providers/restaurants_provider.dart';
import 'providers/booking_details_provider.dart';
import 'providers/hotel_provider.dart';
import 'screens/restaurants_screen.dart';
import 'screens/hotel_detail_screen.dart';
import 'screens/booking_screen.dart';
import 'screens/user_service_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: BookingDetailsProvider(),
        ),
        ChangeNotifierProvider.value(
          value: HotelProvider(),
        ),
        ChangeNotifierProvider.value(
          value: RestaurantsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Airport Authority',
        theme: ThemeData(
            primarySwatch: Colors.orange,
            accentColor: Colors.orange,
            iconTheme: IconThemeData(color: Colors.white),
            fontFamily: 'Lato',
          ),
        debugShowCheckedModeBanner: false,
        home: UserServiceScreen(),
        routes: {
          RestaurantScreen.routeName: (ctx){
            return RestaurantScreen();
          },
          HotelDetailScreen.routName: (ctx){
            return HotelDetailScreen();
          },
          BookingScreen.routeName:(ctx){
            return BookingScreen();
          },
          MainScreen.routeName: (ctx){
            return MainScreen();
          },
        },
      ),
    );
  }
}
