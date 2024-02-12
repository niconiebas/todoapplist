// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoapp_course/pages/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo,
      content: Container(
        height: 140,
        child: Column(
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),

            SizedBox(height: 10),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                SizedBox(width: 10),

                //cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
