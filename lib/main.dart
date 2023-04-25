import 'package:flutter/material.dart';
import 'package:flutter_application_3/quiz.dart';


void main() {
 runApp(const Quiz());
}

// class QuizzApp extends StatelessWidget {
//   const QuizzApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           // width: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 13, 245, 129),
//                 Color.fromARGB(255, 13, 245, 129)
//               ],
//             ),
//           ),
//           child: Column(
//             children: [
//               const SizedBox(height: 100),
//               Image.asset('assets/images/quiz-logo.png',),
//               const SizedBox(height: 50),
//               const Text('Learn Flutter the fun away',style: TextStyle(fontSize: 20),),
//               const SizedBox(height: 50),
//               const ElevatedButton(onPressed: null, child: Text('SatrtQuiz')),   
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
