import 'package:app_todo/const/Sizer.dart';
import 'package:app_todo/const/colors.dart';
import 'package:flutter/material.dart';

class AddControlBar extends StatefulWidget {
  const AddControlBar({super.key});

  @override
  State<AddControlBar> createState() => _AddControlBarState();
}

class _AddControlBarState extends State<AddControlBar> {
  @override
  Widget build(BuildContext context) {
    return Container(      
      margin: outMargin,
      width:double.infinity,
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: outMargin,
            alignment: Alignment.center,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: const Align(
              alignment: Alignment(0, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.add,
                      color: black,
                    ),
                    hintText: "Adding items",
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
          Container(
            margin: outMargin,
            width: 75,
            height: 75,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(blue),
              ),
              child: const Icon(
                Icons.save,
                color: Colors.white,
                size: 25.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
