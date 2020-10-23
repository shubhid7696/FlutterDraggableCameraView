

import 'package:flutter/material.dart';
import 'package:m_class/app_res/styles.dart';

Widget mainButton(String text, Function() onTapFun) {
  return InkWell(
    onTap: onTapFun,
    focusColor: Colors.orange,
    child: Container(
        color: Colors.blueAccent,
        child: Text(text,style: buttonStyle,)),
  );
}