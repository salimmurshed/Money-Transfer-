


import 'dart:convert';

import 'package:flutter/material.dart'; 
 

void PositiveAlert(message, context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: Column(
          children: <Widget>[
            Icon(
              Icons.done_all,
              color: Colors.green,
            ),
            SizedBox(
              height: 8,
              width: 8,
            ),
            new Text(
              message,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
              width: 8,
            ),
            FloatingActionButton.extended(
              onPressed: () async {
                Navigator.pop(context);
              },
              backgroundColor: Color(0xff00bbdd),
              label: Text('Okay'),
            ),
          ],
        ),
      );
    },
  );
}