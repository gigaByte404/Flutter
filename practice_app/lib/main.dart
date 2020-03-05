import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
    var questions = [
      'Q1?',
      'Q2?',
      'Q3?',
      'Q4?',
      'Q5?',
      'Q6?',
      'Q7?',
      'Q8?',
      'Q9?',
      'Q10?',
    ];

  void deleteQuestion() {
    setState(() {
      questions.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions App')
        ),
        body: Column(
          children: [
            Question(questions),
            RaisedButton(
              child: Text('Delete'),
              onPressed: deleteQuestion
            ),
          ],

        ),
      ),
    );
  }
}
