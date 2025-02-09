import 'package:coolapp/util/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogBox extends StatelessWidget {
  final controller ;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key , required this.controller , required this.onSave , required this.onCancel});
   
   

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
        height: 120,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)) , hintText: 'Add a new task....'),
            ) ,


            //Save Button and Cancel Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                MyButton(text: 'Cancel', onPressed: onCancel)

              ],
            )
            ],
        ),
      ),
    );
  }
}