import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  final List<String> questionText ;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText.toString(),
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.justify,
      ),
    );
  }
}