import 'package:flutter/material.dart';

class SubmitButton extends Padding {
  SubmitButton(String text, Function onButtonPressed)
      : super(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: () {
              onButtonPressed();
            },
            padding: EdgeInsets.all(12),
            color: Colors.lightBlueAccent,
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        );
}
