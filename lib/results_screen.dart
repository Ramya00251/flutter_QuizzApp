import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/questions.dart';
import 'package:flutter_application_3/questions_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswers, required this.StartQuiz});
  final void Function() StartQuiz;

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summery.add({
        'question_index': i,
        'question': questions[i],
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswers[i]
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final summeryData = getSummeryData();
    final totalQuestions = questions.length;
    final numCorrectAnswers = summeryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
    // TODO: implement build
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('you answered$numCorrectAnswers out of $totalQuestions questions correctly!',),
              const SizedBox(height: 30,),
              QuestionSummery(getSummeryData()),
              const SizedBox(
                height: 30,
              ),
              const Text('List of answers and questions'),
              TextButton.icon(
                onPressed: () {
                  StartQuiz();
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.replay),
                label: const Text('Restart Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
