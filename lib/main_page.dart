import 'package:firebase_anonymous_demo/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;

  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(user.uid),
            RaisedButton(
              child: Text("Sign Out"),
              onPressed: () async {
                await AuthServices.sigOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
