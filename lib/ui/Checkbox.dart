import 'package:flutter/material.dart';

class Checker extends StatefulWidget {
  int idex;
  Checker({super.key, required this.idex});

  @override
  State<Checker> createState() => _CheckerState();
}

class _CheckerState extends State<Checker> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        key: ValueKey(widget.idex),
        checkColor: Colors.white,
        tristate: false,
        value: _value,
        onChanged: (bool? newValue) {
          setState(() {
            _value = newValue!;
          });
        });
  }
}
