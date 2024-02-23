import 'package:app_todo/const/colors.dart';
import 'package:app_todo/ui/add_Dos.dart';
import 'package:app_todo/ui/app_bar.dart';
import 'package:app_todo/ui/sareach_bar.dart';
import 'package:app_todo/ui/todo_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void setState(VoidCallback fn) {
    setState(() {
      ToDos();
    });
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: whiteColor,
      appBar: bar(),
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: blue, width: 2.0)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
            Expanded(flex: 8, child: ToDos()),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    color: whiteColor,
                    border: Border(top: BorderSide(color: blue, width: 2.0)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            )
          ]),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
                margin: const EdgeInsets.only(bottom: 12.5),
                child: const Sareach()),
          ),
          const Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: AddContrlorbar()),
        ],
      ),
    );
  }
}


/**
                 Container(
                  margin: outMargin,
                  padding: const EdgeInsets.all(1.5),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "All ToDos",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
 */






