import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function select;
  final String anstext;
  Answer(this.select, this.anstext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          anstext,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: select,
      ),
    );
  }
}
