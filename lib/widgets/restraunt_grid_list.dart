import 'package:flutter/material.dart';
import '../models/restaurants.dart';
import 'package:provider/provider.dart';
class RestaurantGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            //Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
              //  arguments: pro.id);
          },
          child: Image.network(
              restaurant.restaurantImgUrl,
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
           restaurant.restaurantName,
            textAlign: TextAlign.center,
          ),
       
          ),
        ),
         
      );
  }
}