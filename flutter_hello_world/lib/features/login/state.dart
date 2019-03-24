import 'package:flutter/material.dart';
import 'package:flutter_hello_world/commonwidget/edittext.dart';
import 'package:flutter_hello_world/commonwidget/submitbutton.dart';
import 'package:flutter_hello_world/resource/strings/en.dart';
import 'package:flutter_hello_world/resource/strings/name.dart';
import 'package:flutter_hello_world/router.dart';

import 'login.dart';

class LoginStateWidget extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final email = EditText(values[Hint_Email], false);

    final password = EditText(values[Hint_Password], true);

    final loginButton = SubmitButton(values[Login], onLoginButtonPress);

    return Scaffold(
      appBar: AppBar(
        title: Text(values[AppTitle]),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }

  onLoginButtonPress() {
    Navigator.of(context).pushNamed(ScreenName.HomePage.toString());
  }
}
