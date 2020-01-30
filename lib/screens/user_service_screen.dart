import 'package:flutter/material.dart';
import './main_screen.dart';
import './restaurants_screen.dart';
class UserServiceScreen extends StatefulWidget {
  @override
  _UserServiceScreenState createState() => _UserServiceScreenState();
}

class _UserServiceScreenState extends State<UserServiceScreen> {
  final _departurelocation = TextEditingController();
  final _arrivalLocation = TextEditingController();
  bool _hotel = false;
  bool _restaurant = false;
  bool _taxi = false;
  
  @override
  Widget build(BuildContext context) {
    void _submitdetails(){
    if(_departurelocation.text !=null && _arrivalLocation.text !=null){  
      if(_hotel ==true){
        Navigator.of(context).pushNamed(MainScreen.routeName);
      }
      if(_restaurant == true){
        Navigator.of(context).pushNamed(RestaurantScreen.routeName);
      }
      if(_taxi == true){
        Navigator.of(context).pushNamed(MainScreen.routeName);
      // Navigator.of(context).pushNamed(RestaurantScreen.routeName);
      }
    }
  }
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Traveller'),
      ),
      body: SingleChildScrollView(
              child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration:
                    InputDecoration(labelText: 'Enter Departure Location*'),
                controller: _departurelocation,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Enter Arrival Location*'),
                controller: _arrivalLocation,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SELECT THE TYPE OF SERVICE',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Hotel Services',
                      style: TextStyle(color: Colors.grey[700])),
                  Checkbox(
                    value: _hotel,
                    onChanged: (bool value) {
                      setState(() {
                        if (_restaurant == false && _taxi == false) {
                          _hotel = !_hotel;
                        }
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Restaurant Services',
                      style: TextStyle(color: Colors.grey[700])),
                  Checkbox(
                    value: _restaurant,
                    onChanged: (bool value) {
                      setState(() {
                        if (_hotel == false && _taxi == false) {
                          _restaurant = !_restaurant;
                        }
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Taxi Services',
                      style: TextStyle(color: Colors.grey[700])),
                  Checkbox(
                    value: _taxi,
                    onChanged: (bool value) {
                      setState(() {
                        if (_restaurant == false && _hotel == false) {
                          _taxi = !_taxi;
                        }
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Container(
                width: double.infinity,
                child: FlatButton.icon(
                  icon: Icon(Icons.airline_seat_flat),
                  color: Colors.orange,
                  label: Text('Submit'),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: _submitdetails,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
