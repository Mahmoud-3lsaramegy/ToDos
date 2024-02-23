import 'package:app_todo/const/colors.dart';
import 'package:app_todo/oprations/add_op.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddContrlorbar extends StatefulWidget {
  const AddContrlorbar({super.key});

  @override
  State<AddContrlorbar> createState() => _AddContrlorbarState();
}

class _AddContrlorbarState extends State<AddContrlorbar> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.only(
                top: 8.5, right: 12.5, left: 12.5, bottom: 2.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: TextField(
              controller: title,
              decoration: const InputDecoration(
                  hintText: "Adding items",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              height: 65,
              margin: const EdgeInsets.only(right: 12.5, top: 8.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: blue,
              ),
              child: IconButton(
                onPressed: () {
                  if (title.text.isEmpty) {
                    /// snake bar
                  } else {
                    add(title: title.text);
                    title.text = "";
                    Navigator.popAndPushNamed(context, "reload");
                  }
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              )),
        ),
      ],
    );
  }
}
