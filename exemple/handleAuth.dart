import 'package:flutter/material.dart';
import 'package:firebase_kosmos/firebase_kosmos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirebaseKosmos.handleAuth(
        index: NotHandleAuth(),
        mainAppController: HandleAuth(),
      ),
    );
  }
}

////////////////////////////////////////////////////////////

class NotHandleAuth extends StatefulWidget {
  @override
  _NotHandleAuthState createState() => _NotHandleAuthState();
}

class _NotHandleAuthState extends State<NotHandleAuth> {
  @override
  Widget build(BuildContext context) {
    return Text("Not handle auth");
  }
}

////////////////////////////////////////////////////////////

class HandleAuth extends StatefulWidget {
  @override
  _HandleAuthState createState() => _HandleAuthState();
}

class _HandleAuthState extends State<HandleAuth> {
  @override
  Widget build(BuildContext context) {
    return Text("Handle Auth");
  }
}