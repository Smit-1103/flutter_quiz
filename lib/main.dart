import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      home: Quiz(),
    ),
  );
}
