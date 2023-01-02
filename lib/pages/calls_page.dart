import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';

class calls_element extends StatelessWidget {
  const calls_element({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Hey this is Calls page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
