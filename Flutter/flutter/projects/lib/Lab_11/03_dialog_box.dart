import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Awesome Dialog Boxes"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [

              //Warning
              AnimatedButton(
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

              SizedBox(
                height: 20,
              ),

              //Error
              AnimatedButton(
                  text: 'Error Dialog',
                  color: Colors.red,
                  pressEvent: () {
                    AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.leftSlide,
                            showCloseIcon: true,
                            title: 'Warning',
                            desc: "Some things went to wrong",
                            btnOkOnPress: () {},
                            btnOkColor: Colors.red)
                        .show();
                  }),
              SizedBox(
                height: 20,
              ),

              //Question
              AnimatedButton(
                  text: 'Question Dialog',
                  color: Colors.amber,
                  pressEvent: () {
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        animType: AnimType.rightSlide,
                        showCloseIcon: true,
                        title: 'Question',
                        desc: "you have licence?",
                        btnOkOnPress: () {},
                        btnOkColor: Colors.green)
                        .show();
                  }),
              SizedBox(
                height: 20,
              ),

              //Success
              AnimatedButton(
                  text: 'Success Dialog',
                  color: Colors.green,
                  pressEvent: () {
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.bottomSlide,
                        showCloseIcon: true,
                        title: 'Success',
                        desc: "You did it",
                        btnOkOnPress: () {},
                       ).show();
                  }),

            ],
          ),
        ),
      ),
    );
  }
}
