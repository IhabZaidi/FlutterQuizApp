import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalscore;
  final Function resetQ;
  Result(this.totalscore, this.resetQ);
  String get resultTxt {
    String txt;
    if (totalscore >= 25) {
      txt = 'Begginer';
    } else if (totalscore < 25) {
      txt = 'Inter';
    } else {
      txt = 'Pro';
    }
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultTxt,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQ,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
