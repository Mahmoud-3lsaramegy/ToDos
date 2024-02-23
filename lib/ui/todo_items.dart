import 'package:app_todo/const/Auth.dart';
import 'package:app_todo/const/Sizer.dart';
import 'package:app_todo/const/colors.dart';
import 'package:app_todo/ui/Checkbox.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ToDos extends StatefulWidget {
  ToDos({super.key});

  @override
  State<ToDos> createState() => _ToDosState();
}

class _ToDosState extends State<ToDos> {
  late List<bool> values;
  List<QueryDocumentSnapshot> dosList = [];
  TextDecoration textShap = TextDecoration.none;

  Future show() async {
    QuerySnapshot dosdata = await FirebaseFirestore.instance
        .collection("TODOs")
        //.where("id", isEqualTo: userid)
        .get();
    setState(() {
      dosList.addAll(dosdata.docs);
      values = List.filled(dosList.length, false);
    });
  }

  @override
  void initState() {
    show();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.5),
          child: Card(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(8.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      //tristate: false,
                      value: values[index],
                      onChanged: (bool? newValue) {
                        setState(() {
                          values[index] = newValue!;
                        });
                      }),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "${dosList[index]['title']}",
                      style: TextStyle(
                        decoration: textShap,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: red,
                      )),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: dosList.length,
    );
  }
}
