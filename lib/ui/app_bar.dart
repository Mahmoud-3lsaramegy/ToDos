import 'package:app_todo/const/colors.dart';
import 'package:flutter/material.dart';
AppBar bar(){
  return AppBar(
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      backgroundColor: whiteColor,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
}