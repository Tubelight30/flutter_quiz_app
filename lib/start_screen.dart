import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            //! this is to make the image a little transparent we can also wrap with image with Opacity widget but very resource intensive.
            color: const Color.fromARGB(156, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter the Fun way!',
            style: TextStyle(color: Colors.white),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              shape: const BeveledRectangleBorder(),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
