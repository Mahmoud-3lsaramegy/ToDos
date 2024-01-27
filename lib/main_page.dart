import 'package:app_todo/const/Sizer.dart';
import 'package:app_todo/const/colors.dart';
import 'package:app_todo/ui/add_Dos.dart';
import 'package:app_todo/ui/app_bar.dart';
import 'package:app_todo/ui/sareach_bar.dart';
import 'package:app_todo/ui/todo_items.dart';
import 'package:app_todo/ui/app_bar.dart';
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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Sareach(),
            const SizedBox(
              height: 25,
            ),
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
            Expanded(
              flex: 12,
              child: Container(
                  width: double.infinity, margin: outMargin, child: ToDos()),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
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
    );
  }
}
