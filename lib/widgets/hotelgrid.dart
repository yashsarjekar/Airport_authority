import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/hotel.dart';
class HotelGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hotel =  Provider.of<Hotel>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            //Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
              //  arguments: pro.id);
          },
          child: Image.network(
              hotel.hotelImgUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              //product.toggleisFavourite(authData.token, authData.userId);
            },
            color: Theme.of(context).accentColor,
          ),
          title: Text(
           hotel.hotelname,
            textAlign: TextAlign.center,
          ),
       
          ),
        ),
         
      );
  }
}