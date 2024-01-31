import 'package:flutter/material.dart';

Future<void> showCustomDialog(BuildContext context,
     Function() onPressed) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Questions is finished!'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Start it again'),
              
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed:onPressed,
            child: const Text('OK'),
            
          ),
        ],
      );
    },
  );
}