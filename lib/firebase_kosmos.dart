library firebase_kosmos;

import 'package:firebase_kosmos/alertBox/errorAlert.dart';
import 'package:firebase_kosmos/constant/authMessage.dart';
import 'package:firebase_kosmos/firebase/firebase_auth_kosmos.dart';
import 'package:firebase_kosmos/firebase/firebase_cloud_kosmos.dart';
import 'package:flutter/material.dart';

class FirebaseKosmos {

  /* Auth */

  Future<dynamic> authSignIn({String email, String password, bool debugMode, context}) async {
    FocusScope.of(context).requestFocus(FocusNode());

    String e = await Auth.signIn(
      email: email,
      password: password
    );

    if (e == "OK")
      return SUCCESS;
    else {
      if (debugMode == true)
        ErrorAlert.errorAlert(e, context);
    }
    return e;
  }

  Future<dynamic> authSignUp({String email, String password, Map<String, dynamic> map, bool debugMode, context, String cloud}) async {
    FocusScope.of(context).requestFocus(FocusNode());

    String e = await Auth.signUp(
      email: email,
      password: password,
      map: map,
      cloud: cloud
    );

    if (e == "OK")
      return SUCCESS;
    else {
      if (debugMode == true)
        ErrorAlert.errorAlert(e, context);
    }
    return e;
  }

  static Future<dynamic> authLogOut() {
    return Auth.logOutAuth();
  }

  /* Cloud */

  static cloudSet({String email, Map<String, dynamic> map, String cloud}) async {
    await Cloud.setCloud(
      email: email,
      map: map,
      cloud: cloud,
    );
  }
}