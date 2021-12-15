import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';


class LoginProvider {
  static FirebaseAuth firebaseAuth;

  static StreamController<String> statusStream;
  static Stream stateStream;


  static instantiate() async {
    firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.authStateChanges().listen(authStateChanged);
    statusStream = StreamController();
    phoneAuthState = StreamController(sync: true);
    stateStream = phoneAuthState.stream.asBroadcastStream(); //not understood
  }


  static void addStatus(String s) {
    statusStream.sink.add(s);
  }

  static logOut() {
    FirebaseAuth.instance.signOut();
    firebaseAuth = null;
  }
}
