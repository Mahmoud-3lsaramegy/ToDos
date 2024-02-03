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
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: whiteColor,
      appBar: bar(),
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [const Sareach(), Expanded(child: ToDos())],
        ),
        const Align(alignment: Alignment.bottomCenter, child: AddControlBar()),
      ]),
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






