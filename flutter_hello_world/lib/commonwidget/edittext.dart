import 'package:flutter/material.dart';
import 'package:flutter_hello_world/resource/style/text.dart';

class EditText extends TextFormField {
  EditText(String hintText, bool hideText)
      : super(
          autofocus: false,
          obscureText: hideText,
          style: NormalText,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
        );
}
