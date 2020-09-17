import 'package:flutter/material.dart';

class RestaurentName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Image.network(
            'https://media-cdn.tripadvisor.com/media/photo-s/0e/cc/0a/dc/restaurant-chocolat.jpg',
            height: size.height * 0.4,
            width: size.width,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * 0.2,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            width: size.width * 0.9,
            height: size.height * 0.3,
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Inka Restaurant',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '5.0 (200+) | All days : 9 AM - 6 PM ',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Reach us @123456789',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    color: Color.fromRGBO(0, 0, 59, 0.8),
                    onPressed: () {},
                    child: Text(
                      'BOOK A TABLE',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }
}
