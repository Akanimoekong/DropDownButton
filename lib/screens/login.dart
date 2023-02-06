import 'package:callingclasses/screens/listview.dart';
import 'package:callingclasses/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
OurListView()
          ],
        ),
      ),
    );
  }
}
