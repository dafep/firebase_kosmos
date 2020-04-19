import 'package:firebase_kosmos/firebase_kosmos.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  double screenWidth;
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: new Center(
        child: new GestureDetector(
          /**********************/
          onTap: () async {
            if (await Auth.logOutAuth() == "OK") {
              Navigator.pushNamed(context, "/");
            }
          },
          /**********************/
          child: new Text("Logout"),
        ),
      ),
    );
  }
}