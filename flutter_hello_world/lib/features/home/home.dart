import 'package:flutter/material.dart';
import 'package:flutter_hello_world/resource/strings/en.dart';
import 'package:flutter_hello_world/resource/strings/name.dart';
import 'package:flutter_hello_world/resource/style/text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        values[Home_Title], // 'Welcome ',
        style: TitleText,
      ),
    );

    final message = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        values[Home_Message],
        style: NormalText,
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[welcome, message],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
