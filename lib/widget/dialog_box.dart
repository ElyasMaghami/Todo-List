import 'package:flutter/material.dart';
import 'package:todo_list/widget/butto_dialog.dart';

class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });
  VoidCallback onSave;
  VoidCallback onCancel;

  final controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      content: Container(
        padding: const EdgeInsets.only(top: 20),
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Enter your Task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  onPressed: onSave,
                  text: 'save',
                ),
                const SizedBox(width: 8),
                MyButton(
                  onPressed: onCancel,
                  text: 'cancel',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
