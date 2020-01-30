import 'package:flutter/material.dart';
import '../models/hotel.dart';

class HotelProvider with ChangeNotifier {
  List<Hotel> hotelList = [
    Hotel(
        id: 'p1',
        locationid: 'l1',
        hotelname: 'Oberio',
        hotelImgUrl:
            'https://images.freeimages.com/images/small-previews/44f/life-in-hotels-1187794.jpg',
        hotelImgUrl1:
            'https://images.freeimages.com/images/small-previews/dff/hotel-room-2-1550441.jpg',
        hotelImgUrl2:
            'https://images.freeimages.com/images/small-previews/b1c/hotel-room-1230953.jpg',
        hotelDescription:
            '''About the property Villa Ikebana is an earmark property that offers splendid comfort to its guests.
            They are designed and decorated in a fashion to calm and relax the guests.
            Room Details The rooms have sophisticated interiors coupled with exquisitely decorated living spaces.
            The rooms are fully furnished and spacious with a balcony to enjoy the extravagant view of sunrise and sunset.''',
        totalrooms: 30,
        acprice: 1000,
        nonacprice: 500,
        longitude: 72.48,
        latitude: 212),
    Hotel(
        id: 'p2',
        locationid: 'l1',
        hotelname: 'Taj Hotel',
        hotelImgUrl:
            'https://images.freeimages.com/images/large-previews/96a/hotel-1223612.jpg',
        hotelImgUrl1:
            'https://images.freeimages.com/images/small-previews/b1c/hotel-room-1230953.jpg',
        hotelImgUrl2:
            'https://images.freeimages.com/images/small-previews/358/miami-hotel-1496807.jpg',
        hotelDescription:
            '''About the property Villa Ikebana is an earmark property that offers splendid comfort to its guests.
            They are designed and decorated in a fashion to calm and relax the guests.
            Room Details The rooms have sophisticated interiors coupled with exquisitely decorated living spaces.
            The rooms are fully furnished and spacious with a balcony to enjoy the extravagant view of sunrise and sunset.''',
        totalrooms: 30,
        acprice: 1000,
        nonacprice: 500,
        longitude: 72.48,
        latitude: 212),
    Hotel(
        id: 'p3',
        locationid: 'l1',
        hotelname: 'Hotel Royals',
        hotelImgUrl:
            'https://images.freeimages.com/images/small-previews/3d1/hotel-hilton-santo-domingo-1222125.jpg',
        hotelImgUrl1:
            'https://images.freeimages.com/images/small-previews/3b5/dome-hotel-koeln-1252023.jpg',
        hotelImgUrl2:
            'https://images.freeimages.com/images/small-previews/dff/hotel-room-2-1550441.jpg',
        totalrooms: 30,
        acprice: 1000,
        nonacprice: 500,
        hotelDescription:
            '''About the property Villa Ikebana is an earmark property that offers splendid comfort to its guests.
            They are designed and decorated in a fashion to calm and relax the guests.
            Room Details The rooms have sophisticated interiors coupled with exquisitely decorated living spaces.
            The rooms are fully furnished and spacious with a balcony to enjoy the extravagant view of sunrise and sunset.''',
        longitude: 72.48,
        latitude: 212),
    Hotel(
        id: 'p4',
        locationid: 'l1',
        hotelname: 'King Palace',
        hotelImgUrl:
            'https://images.freeimages.com/images/small-previews/95f/hotel-room-1230962.jpg',
        hotelImgUrl1:
            'https://images.freeimages.com/images/small-previews/358/miami-hotel-1496807.jpg',
        hotelImgUrl2:
            'https://images.freeimages.com/images/small-previews/ffd/the-cullinan-hotel-1480557.jpg',
        hotelDescription:
            '''About the property Villa Ikebana is an earmark property that offers splendid comfort to its guests.
            They are designed and decorated in a fashion to calm and relax the guests.
            Room Details The rooms have sophisticated interiors coupled with exquisitely decorated living spaces.
            The rooms are fully furnished and spacious with a balcony to enjoy the extravagant view of sunrise and sunset.''',
        totalrooms: 30,
        acprice: 1000,
        nonacprice: 500,
        longitude: 72.48,
        latitude: 212),
  ];
  List<Hotel> get hotels {
    return [...hotelList];
  }

  Hotel findById(String id) {
    return hotelList.firstWhere((ctx) => ctx.id == id);
  }
}
