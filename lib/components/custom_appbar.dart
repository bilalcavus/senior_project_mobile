import 'package:flutter/material.dart';

class CustomAppBar {
  AppBar customAppBar(String titleText) {
    return AppBar(
        backgroundColor: const Color(0xffEF2A39),
          title: Text(titleText),
          centerTitle: true,
    );
  }
}
