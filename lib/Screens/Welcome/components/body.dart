import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
        appBar: AppBar(
          title: Text('HISTORY'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("Clicked");
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                print("Search Clicked");
              },
              color: Colors.white54,
            )
          ],
          elevation: 6,
          titleSpacing: 12,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Clicked");
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          elevation: 5,
          highlightElevation: 10,
        ),
        body: Center(
            child: Container(
          color: Colors.red,
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
                text: 'Hello',
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
            TextSpan(
                text: 'flutter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900))
          ])),
        )));
  }
}
