import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull('https://openapi.plusportal.de/data/v2/devices'),
        headers: {'Accept': 'application/json', 'Authorization': 'dCZuYYFNXh'});

    //print(response.body);
    List data = json.decode(response.body);
    print(data[1]['id']);
    return null;
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'iHack RLP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                getData();
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: Text(
                  'Get API Data',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        child: Image.asset(
          'assets/images/lp_image.png',
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageChildren(constraints.biggest.width / 2),
              ),
            ],
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
