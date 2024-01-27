import 'package:app_todo/const/Sizer.dart';
import 'package:app_todo/const/colors.dart';
import 'package:flutter/material.dart';

class Sareach extends StatefulWidget {
  const Sareach({super.key});

  @override
  State<Sareach> createState() => _SareachState();
}

class _SareachState extends State<Sareach> {
  TextEditingController valueOFsareach = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: outMargin,
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: const Align(
        alignment: Alignment(0, 0),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: black,
              ),
              hintText: "Search",
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
