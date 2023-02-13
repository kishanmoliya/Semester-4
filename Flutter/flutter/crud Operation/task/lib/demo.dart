import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DemoState();
}

class _DemoState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),

      body: Container(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: ()  {

              },
              child: Text("Delete"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(
                    Colors.red),
              ),
            ),

            AnimatedButton(
              width: double.infinity,
                text: 'Warning Dialog',
                color: Colors.orange,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: 'Warning',
                    desc: "It's very dangerous",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                }),
          ],
        ),
      ),
    );
  }
}
