import 'package:QuizzApp/Result.dart';
import 'package:QuizzApp/quiz.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionslist = [
    {
      'questiontxt': 'How older you ?',
      'answers': [
        {'text': '15', 'score': 10},
        {'text': '25', 'score': 5},
        {'text': '35', 'score': 50},
      ],
    },
    {
      'questiontxt': 'How much your salary ?',
      'answers': [
        {'text': '2000\$', 'score': 19},
        {'text': '2499\$', 'score': 2},
        {'text': '+2500\$', 'score': 12},
      ],
    },
    {
      'questiontxt': 'your education ?',
      'answers': [
        {'text': 'scientist', 'score': 20},
        {'text': 'Dev', 'score': 40},
        {'text': 'Design', 'score': 6},
      ],
    },
  ];
  var qindex = 0;
  int totalscore = 0;
  void meth(int score) {
    if (qindex < questionslist.length) {
      setState(() {
        qindex = qindex + 1;
        print(qindex);
      });
    } else {
      print('No more Questions for 2Day');
    }
    totalscore += score;
  }

  void resetQ() {
    setState(() {
      qindex = 0;
      totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: qindex < questionslist.length
            ? Quiz(
                questions: questionslist,
                answerQuestion: meth,
                qindex: qindex,
              )
            : Result(totalscore, resetQ),
      ),
    );
  }
}
