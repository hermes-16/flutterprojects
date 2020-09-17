import 'package:flutter/material.dart';

class DeliveryOptions extends StatefulWidget {
  @override
  _DeliveryOptionsState createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  int _selectedRadio;
  @override
  void initState() {
    super.initState();
    _selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      _selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: size.width * 0.03),
          child: Text(
            'Delivery Options :',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          height: size.height * 0.06,
          child: Row(
            children: [
              SizedBox(width: size.width * 0.15),
              Icon(Icons.fastfood),
              Radio(
                value: 1,
                groupValue: _selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val);
                },
              ),
              Text('DineIn'),
              SizedBox(width: size.width * 0.07),
              Icon(Icons.directions_bike),
              Radio(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val);
                },
              ),
              Text('TakeAway'),
            ],
          ),
        ),
      ],
    );
  }
}
