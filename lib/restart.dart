import "package:flutter/material.dart";

class Restart extends StatelessWidget {
  final Function action;

  Restart(this.action);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Restart Quiz"),
        textColor: Colors.white,
        color: Colors.orange,
        onPressed: action);
  }
}
