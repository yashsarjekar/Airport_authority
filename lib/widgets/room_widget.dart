import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/booking_details_provider.dart';

class RoomWidget extends StatefulWidget {
  DateTime checkinDate;
  DateTime checkoutDate;
  final String hotelname;
  double acprice;
  double nonacprice;
  RoomWidget(this.checkinDate, this.checkoutDate, this.hotelname, this.acprice,
      this.nonacprice);
  @override
  _RoomWidgetState createState() => _RoomWidgetState();
}

class _RoomWidgetState extends State<RoomWidget> {
  var _ac = false;

  var _noAc = false;
  double _norooms = 1;
  double _noGuest = 1;

  @override
  Widget build(BuildContext context) {
    void _submitbooking() {
      if (widget.checkinDate != null && widget.checkinDate != null) {
        if(_ac == false && _noAc ==false){
           print("false");
          showDialog(
           
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Text('Message'),
                content: Text('Please Select the type of room'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
        }else{
          if (_ac != true) {
          Provider.of<BookingDetailsProvider>(context).addbooking(
              _norooms,
              _noGuest,
              widget.hotelname,
              'Non Ac',
              widget.nonacprice,
              widget.checkinDate,
              widget.checkoutDate);
          Navigator.of(context).pop();
        }

        if (_noAc != true) {
          Provider.of<BookingDetailsProvider>(context).addbooking(
              _norooms,
              _noGuest,
              widget.hotelname,
              'Ac',
              widget.acprice,
              widget.checkinDate,
              widget.checkoutDate);
          Navigator.of(context).pop();
        }
        }
        
      } else {
        showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Text('Message'),
                content: Text('Please Select CheckIn Date and CheckOut Date'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      }
    }

    return Column(
      children: <Widget>[
        
        Container(
          height: 200,
          width: 330,
          padding: EdgeInsets.all(10),
          child: Card(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Type of Room: AC'),
                    Checkbox(
                      value: _ac,
                      onChanged: (bool value) {
                        setState(() {
                          if (_noAc != true) {
                            _ac = !_ac;
                          }
                        });
                      },
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Animities'),
                        Text('Rs-/'+widget.acprice.toString()),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton.icon(
                          icon: Icon(Icons.tv),
                          label: Text('TV'),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.wifi),
                          label: Text('Wifi'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton.icon(
                          icon: Icon(Icons.tv),
                          label: Text('Room Servies'),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.hotel),
                          label: Text('double Bed'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 200,
          width: 330,
          padding: EdgeInsets.all(10),
          child: Card(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Type of Room: Non AC'),
                    Checkbox(
                      value: _noAc,
                      onChanged: (bool value) {
                        setState(() {
                          if (_ac != true) {
                            _noAc = !_noAc;
                          }
                        });
                      },
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Animities'),
                        Text('Rs-/' + widget.nonacprice.toString()),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton.icon(
                          icon: Icon(Icons.tv),
                          label: Text('TV'),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.wifi),
                          label: Text('Wifi'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton.icon(
                          icon: Icon(Icons.tv),
                          label: Text('Room Servies'),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.hotel),
                          label: Text('double Bed'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            width: 320,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(' Room ' + _norooms.toString()),
                    FlatButton.icon(
                      icon: Icon(Icons.hotel),
                      label: Text('Guest'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Divider(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('No of Guests'),
                      SizedBox(
                        width: 20,
                      ),
                      Text(_noGuest.toString()),
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (_noGuest % 3 == 0) {
                              _norooms = _norooms + 1;
                            }
                            _noGuest = _noGuest + 1;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.remove, color: Colors.orange),
                        onPressed: () {
                          if (_noGuest > 1) {
                            setState(() {
                              if (_norooms > 1) {
                                if (_noGuest % 3 >= 0) {
                                  _norooms = _norooms - 1;
                                }
                              }
                              _noGuest = _noGuest - 1;
                            });
                          }
                        },
                      )
                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: Icon(Icons.book),
                      label: Text('BOOK NOW'),
                      onPressed: _submitbooking,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
