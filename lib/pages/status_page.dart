import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';

class Statuselement extends StatelessWidget {
  const Statuselement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Hey this is status page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
