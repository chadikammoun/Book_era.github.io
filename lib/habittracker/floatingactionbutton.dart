import 'package:flutter/material.dart';
class myfloatingactionbutton extends StatelessWidget {

final Function()? onPressed;
const myfloatingactionbutton({
  super.key,
  required this.onPressed,
});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child : Icon (Icons.add),
    );
  }
}