import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.StartQuiz,{super.key});
  final void Function() StartQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'learn flutter fun away',
            style: TextStyle(color: Colors.white,fontSize: 28)
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              StartQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('StartQuiz'),
          ),
        ],
      ),
    );
  }
}
