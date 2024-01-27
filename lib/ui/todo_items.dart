import 'package:app_todo/const/colors.dart';
import 'package:flutter/material.dart';

class ToDos extends StatefulWidget {
  ToDos({super.key});

  @override
  State<ToDos> createState() => _ToDosState();
}

class _ToDosState extends State<ToDos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: const EdgeInsets.all(6.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: blue,
                  value: false,
                  onChanged: (value) {
                    setState(() {
                      value = true;
                    });
                  },
                ),
                const Text(
                  "Do your work.....",
                  
                ),
                const SizedBox(
                  width: 127.2,
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
        );
      },
      itemCount: 10,
    );
  }
}
