import 'package:app_todo/const/Sizer.dart';
import 'package:app_todo/const/colors.dart';
import 'package:app_todo/oprations/add_op.dart';
import 'package:flutter/material.dart';

class AddControlBar extends StatefulWidget {
  const AddControlBar({super.key});

  @override
  State<AddControlBar> createState() => _AddControlBarState();
}

class _AddControlBarState extends State<AddControlBar> {
  final TextEditingController _title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: outMargin,
      width: double.infinity,
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: TextField(
            controller: _title,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.add,
                  color: black,
                ),
                hintText: "Adding items",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                add(title: _title.text);
                _title.text = "";
              },
              style: const ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(grey),
                  backgroundColor: MaterialStatePropertyAll(blue),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  fixedSize: MaterialStatePropertyAll(Size(60, 60))),
            )),
      ]),
    );
  }
}   
    
    
    /*
    Container(
      margin: outMargin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child:
       const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.add,
              color: black,
            ),
            hintText: "Adding items",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
    /*
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(blue)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        )*/
*/
