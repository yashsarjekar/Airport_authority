import 'package:flutter/material.dart';
import '../providers/hotel_provider.dart';
import 'package:provider/provider.dart';
import './hotelgrid.dart';
class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedHotel =Provider.of<HotelProvider>(context).hotelList;
    return  GridView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: loadedHotel.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: loadedHotel[i],
              child: HotelGrid(),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          );
  }
}