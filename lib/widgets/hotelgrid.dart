import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/hotel.dart';
import '../screens/hotel_detail_screen.dart';

class HotelGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hotel = Provider.of<Hotel>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(HotelDetailScreen.routName, arguments: hotel.id);
          },
          child: Hero(
            tag: hotel.id,
            child: Image.network(
              hotel.hotelImgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            hotel.hotelname,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
