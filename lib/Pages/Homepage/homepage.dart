import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ihack/Pages/LandingPage/landingpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          flexibleSpace: Image(
            height: 120,
            image: AssetImage('assets/images/logo_white_large.png'),
          ),
          centerTitle: true,
          actions: [
            MaterialButton(
              onPressed: () => _auth.signOut(),
              child: Text('Logout'),
              hoverColor: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 1000,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.centerLeft,
        //     end: Alignment.centerRight,
        //     colors: [Colors.white, Color.fromRGBO(98, 188, 190, 0.7)],
        //   ),
        // ),
        // child: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(
        //         vertical: 20.0,
        //         horizontal: 40.0,
        //       ),
        //       child: LandingPage(),
        //     ),
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
        //     ],
        //   ),
        // ),
        // )
      ),
    );
  }
}
