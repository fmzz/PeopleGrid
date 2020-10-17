import 'package:flutter/material.dart';
import 'package:ihack/Models/userdata.dart';
import 'package:ihack/Pages/Authentication/authenticate.dart';
import 'package:ihack/Pages/Homepage/homepage.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserData>(context);
    return user == null ? Authenticate() : HomePage();
  }
}
