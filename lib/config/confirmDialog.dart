import 'package:crowwn/config/processingScreen.dart';
import 'package:flutter/material.dart';

Future<void> showConfirmationDialog(BuildContext context, String message, String final_message) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirm Conversion'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel', style: TextStyle(color: Colors.red)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Confirm',style: TextStyle(color: Colors.black)),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProcessingScreen(message: final_message,)),
              );
            },
          ),
        ],
      );
    },
  );
}
