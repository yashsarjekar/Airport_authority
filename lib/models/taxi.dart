import 'package:flutter/material.dart';

class Taxi with ChangeNotifier {
  final String id;
  final String locationid;
  final String typeId;
  final String taxiImgUrl;
  final double rates;
  Taxi(
      {@required this.id,
      @required this.locationid,
      @required this.typeId,
      @required this.taxiImgUrl,
      @required this.rates});
}
