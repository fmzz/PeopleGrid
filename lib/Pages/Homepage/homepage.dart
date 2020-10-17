import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ihack/Pages/LandingPage/landingpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text('EVM Smart Dashboard'),
        centerTitle: true,
        actions: [
          MaterialButton(
            onPressed: () => _auth.signOut(),
            child: Text('Logout'),
            hoverColor: Theme.of(context).accentColor,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(195, 20, 50, 1.0), Colors.amber],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: LandingPage(),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 400,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 20.0,
              //       horizontal: 40.0,
              //     ),
              //     child: Text(
              //       'Test',
              //       style: TextStyle(color: Colors.black),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  AuthService() {}
}
