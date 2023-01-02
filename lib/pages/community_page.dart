import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';

class Community_element extends StatelessWidget {
  const Community_element({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Hey this is Community page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
