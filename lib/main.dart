import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'providers/hotel_provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airport Authority',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: HotelProvider(),
          )
        ],
        child: MainScreen()),
    );
  }
}