import 'package:flutter/material.dart';
import 'package:ihack/Services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(128.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 36,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
                validator: (val) => val.length < 6
                    ? 'Enter a password with 6+ characters'
                    : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(
                height: 36,
              ),
              RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Login'),
                onPressed: () async {
                  await _auth.signInWithEmailAndPassword(email, password);
                },
              ),
              SizedBox(
                height: 36,
              ),
              GestureDetector(
                onTap: () => widget.toggleView(),
                child: Text(
                  'I do not have an account',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
