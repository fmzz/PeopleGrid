import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ihack/Models/userdata.dart';
import 'package:ihack/Services/auth.dart';
import 'package:ihack/Services/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        return StreamProvider<UserData>.value(
          value: AuthService().user,
          child: MaterialApp(
            title: 'iHack RLP',
            theme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.amber,
              accentColor: Colors.amber,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: 'Montserrat',
            ),
            home: Wrapper(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
