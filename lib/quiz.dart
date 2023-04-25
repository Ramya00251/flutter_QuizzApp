import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/questions.dart';
import 'package:flutter_application_3/questions_screen.dart';
import 'package:flutter_application_3/results_screen.dart';
import 'package:flutter_application_3/start_screen.dart';
// import 'package:flutter_application_3/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
   List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  @override
  // void initState() {
  //   activeScreen = 'question-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length){
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    } 
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == 'start-screen' ? Startscreen(switchScreen)
              : QuestionsScreen(onSelectAnswer: chooseAnswers,);

    if (activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chooseAnswers: selectedAnswers,StartQuiz: () {
        switchScreen;
      },);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 42, 7, 240),
                Color.fromARGB(255, 42, 7, 240)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
