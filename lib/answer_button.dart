import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answeText, required this.onTap});

  final String answeText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      backgroundColor: const Color.fromARGB(8, 202, 7, 192),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answeText,textAlign: TextAlign.center,),
    );
  }
}
