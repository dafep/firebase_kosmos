import 'package:flutter/material.dart';
import 'package:firebase_kosmos/firebase_kosmos.dart';

class CloudSet extends StatefulWidget {
  @override
  _CloudSetState createState() => _CloudSetState();
}

class _CloudSetState extends State<CloudSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Center(
          child: MaterialButton(
            onPressed: () {
              Map<String, dynamic> map = {
                "email": "ismail.larsanov@epitech.eu",
                "password": "test",
                "dateRegister": DateTime.now(),
              };
              FirebaseKosmos.cloudSet(
                email: "ismail.larsanov@epitech.eu",
                map: map,
                debugMode: true,
                context: context,
              );
            },
            child: new Text("Set data"),
          ),
        ),
      ),
    );
  }
}