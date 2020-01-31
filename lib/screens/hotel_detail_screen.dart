import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/hotel_provider.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:intl/intl.dart';
import '../widgets/room_widget.dart';

class HotelDetailScreen extends StatefulWidget {
  static const routName = 'hotelDetailScreen';

  @override
  _HotelDetailScreenState createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  DateTime _checkinDate;
  DateTime _checkoutDate;

  String _status(double totalrooms) {
    if (totalrooms > 0) {
      return 'Available';
    } else {
      return 'Not Available';
    }
  }

  void _checkinDatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2021))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _checkinDate = pickedDate;
      });
    });
  }

  void _checkoutDatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2021))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _checkoutDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final hotelid = ModalRoute.of(context).settings.arguments;
    final loadedhotel = Provider.of<HotelProvider>(context).findById(hotelid);
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: Theme.of(context).iconTheme,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                loadedhotel.hotelname,
                style: TextStyle(color: Colors.white),
              ),
              
              background: Hero(
                tag: loadedhotel.id,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  dotSize: 2,
                  overlayShadowSize: 5,
                  images: [
                    Image.network(
                      loadedhotel.hotelImgUrl,
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      loadedhotel.hotelImgUrl1,
                      fit: BoxFit.fill,
                    ),
                    Image.network(
                      loadedhotel.hotelImgUrl2,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                width: double.infinity,
                child: Text(
                  'Status:' + _status(loadedhotel.totalrooms),
                  style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      color: Colors.black54),
                  //textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10),
                child: Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                      label: Text(
                        '3.2' + '  |  ' + '68',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                    child: Center(
                        child: FlatButton.icon(
                      icon: Icon(Icons.local_offer),
                      label: Text(
                        'OFFERS',
                        style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            color: Colors.orange),
                      ),
                      onPressed: () {},
                    )),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Container(
                height: 80,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                              _checkinDate == null
                                  ? 'CheckIn Date'
                                  : DateFormat("dd/MM/yyyy")
                                      .format(_checkinDate)
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  color: Colors.orange)),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                              _checkoutDate == null
                                  ? 'CheckOut Date'
                                  : DateFormat("dd/MM/yyyy")
                                      .format(_checkoutDate)
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  color: Colors.orange)),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange),
                          child: FlatButton(
                            child: Text(
                              "CheckIn Date",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            onPressed: _checkinDatepicker,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange),
                          child: FlatButton(
                            child: Text(
                              "CheckOut Date",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            onPressed: _checkoutDatepicker,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    
                    RoomWidget(_checkinDate, _checkoutDate,loadedhotel.hotelname, loadedhotel.acprice,
                        loadedhotel.nonacprice),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                width: double.infinity,
                child: Text(
                  'Description:\n' + loadedhotel.hotelDescription,
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.black54,
                  ),
                  //textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              Divider(),
            ]),
          )
        ],
      ),
    );
  }
}
