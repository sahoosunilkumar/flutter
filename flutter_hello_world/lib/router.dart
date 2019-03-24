import 'package:flutter/material.dart';

import 'features/home/home.dart';
import 'features/login/login.dart';

final routes = <String, WidgetBuilder>{
  ScreenName.LoginPage.toString(): (context) => LoginPage(),
  ScreenName.HomePage.toString(): (context) => HomePage(),
};

enum ScreenName { LoginPage, HomePage }
